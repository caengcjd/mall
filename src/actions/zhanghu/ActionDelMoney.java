package actions.zhanghu;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.zhanghu.ZhanghuDaoImp;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
/**
 * 账户操作
 * @author 
 *
 */
public class ActionDelMoney implements Action {
	ZhanghuDaoImp dao = new ZhanghuDaoImp();
	
	/**
	 *账户操作 
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward  = null;
		HttpSession session = request .getSession();
		//在session中取出qian用户余额，Object obj = n
		String qian = (String)session.getAttribute("qian");
		//在jsp中取出username，money
		String uname = request.getParameter("username");
		String money = request.getParameter("money");
		
		int n = 0;
		Object obj = session.getAttribute("n");
		if (null == obj) {
			session.setAttribute("n", 1);
		} else {
			String s = String.valueOf(obj);
			n = Integer.parseInt(s);
			n = n + 1;
			session.setAttribute("n", n);
		}
		
		
		int b = qian.indexOf(".");
		String dad = qian.substring(0,b);
		int c = Integer.parseInt(dad);
		int d = Integer.parseInt(money);
		//余额减去商品价格
		int ion = c - d;
		//设置用户余额
		boolean sad = dao.DelMoney(uname, ion);
		//得到当前余额
		String dmoney =dao.getMoney(uname);
		//存入session  ———— money
		session.setAttribute("money", dmoney);
		//代入uname得到最大的id
		String mid = dao.getMAXMid(uname);
		//设置订单状态
		boolean sc = dao.setZt(mid, uname);
		//如果都为TURE，发送ok，否则file
		if(sad && sc){
			forward = mapping.getForwards().get("ok");
			}else{
			forward = mapping.getForwards().get("file");
			}
		//发送ok
		return forward;
	}

}
