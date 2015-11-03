package mystruts;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 核心管理器
 * 
 * @author liuyong
 * 
 */
public class ActionServlet extends HttpServlet {
	Configuration config;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Map<String, Action> actionMap = new HashMap<String, Action>();

	public void init() throws ServletException {
		// 读配置文件
		String realPath = this.getServletContext().getRealPath(
				"/WEB-INF/Struts-config.xml");
		File file = new File(realPath);
		config = new Configuration(file);

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 得到 /login.do然后截取得到映射路径/login
		String url = request.getServletPath();
		int point = url.indexOf(".");
		String path = url.substring(0, point);

		// 通过键取得相应的值
		ActionMapping mapping = config.getAction(path);
		// System.out.println(path+"------------"+mapping);
		String className = mapping.getType(); // 经常报错

		// 得到表单的对象名通过键值对得到相应的类
		String getName = mapping.getName();
		String cn = config.getFormBean(getName);
		// System.out.println(getName + "-----==------" + "------==--" + cn);

		// 封装Form
		ActionForm form = this.getAttributes(request, cn);
		try {
			Action action = actionMap.get(path);
			if (action == null) {
				// 通过类名映射出类
				action = (Action) Class.forName(className).newInstance();
				actionMap.put(path, action);
			}
			ActionForward forward = action.execute(form, mapping, request,
					response);
			if (forward != null) {
				response.sendRedirect(forward.getPath());
			}

		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	/**
	 * 把set方法改成属性
	 * 
	 * @param methodName
	 * @return 已改的Bean的属性
	 */
	private String changeNum(String methodName) {
		String attribute = "";
		String name = methodName.substring(3);// Uname
		String schar = name.charAt(0) + "";
		String change = schar.toLowerCase();// U----u
		attribute = name.replaceFirst(schar, change);// Uname----uname
		return attribute;
	}

	/**
	 * 取得表单中的value
	 * 
	 * @param request
	 * @param form
	 *            映射路径
	 * @return ActionForm
	 */
	private ActionForm getAttributes(HttpServletRequest request, String form) {
		ActionForm obj = null;
		try {
			if (form != null) {
				// 反射出FormBean
				Class aClass = Class.forName(form);
				obj = (ActionForm) aClass.newInstance();
				// System.out.println("class=" + obj);
				// 得到Bean里面所有的方法
				Method method[] = aClass.getMethods();
				for (Method method2 : method) {
					// 得到方法名
					String methodName = method2.getName();
					if (methodName.startsWith("set")) {
						// 调用方法：把set方法改成属性
						String attribute = this.changeNum(methodName);
						// 在请求中得到参数的值
						String paraValue = request.getParameter(attribute);
						// 得到参数类型
						// System.out.println("paraValue=" + paraValue);
						Class type[] = method2.getParameterTypes();
						if (paraValue != "" && paraValue != null) {
							if (type[0] == int.class) {
								int n = Integer.valueOf(paraValue);
								method2.invoke(obj, n);
							} else if (type[0] == String.class) {
								method2.invoke(obj, paraValue);
							} else if (type[0] == Float.class) {
								Float f = Float.valueOf(paraValue);
								method2.invoke(obj, f);
							} else if (type[0] == Date.class) {
								Date date = sdf.parse(paraValue);
								method2.invoke(obj, date);
							}
						}
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return obj;
	}
}
