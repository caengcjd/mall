package actions.login;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import actions.regedit.ActionRegedit;
import dao.users.UsersDaoImp;
import dao.zhanghu.ZhanghuDaoImp;
import forms.userform.UserForm;
//import forms.form_backup.UserForm;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

/**
 * 功能登录类
 * 
 * @author liuyong#垃圾代码a
 * 
 */
public class ActionLogin implements Action {
	UsersDaoImp userdao = new UsersDaoImp();
	ActionRegedit rege = new ActionRegedit();
	ZhanghuDaoImp zd = new ZhanghuDaoImp();

	/**
	 * 
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		 
		// 通过UserForm得到用户名Username
		//System.out.println("the  form  is  the "+((UserForm)form));
		String name ;//= ((UserForm) form).getUsername();
		name=request.getParameter("username");
		System.out.println(name);
		// 通过UserForm得到然后加密
		//String password = rege.Md5(((UserForm) form).getPassword());
		String password=rege.Md5(request.getParameter("password"));
		// 定义一个变i 赋值0
		int i = 0;
		// 调用dao层里的userlist.getAllUser();
		List<UserForm> userslist = userdao.getAllUser();
		// 如果name不为null
		if (name != null) {
			for (i = 0; i < userslist.size(); i++) {
				// 从userslist中循环取中对象中的Username和Password属性相比较
				if ((name).equals(userslist.get(i).getUsername())
						&& ((password).equals(userslist.get(i).getPassword()))) {
					// 调用dao层zd中的getMoney,通过name得到该用户的余额
					String qian = zd.getMoney(name);
					// 把余额放到session中
					request.getSession().setAttribute("qian", qian);
					// 取得该用户的权限放入session中
					request.getSession().setAttribute("qx",
							userslist.get(i).getAdminister());
					// 把用户名放到session中
					request.getSession().setAttribute("username", name);
					// 跳网页success
					forward = mapping.getForwards().get("success");
					return forward;
				}
			}
		}
		// 如果变量i = userslist.size()的大小
		if (i == userslist.size()) {
			// 跳网页fail
			forward = mapping.getForwards().get("fail");
		}
		return forward;

	 
	} 

}
