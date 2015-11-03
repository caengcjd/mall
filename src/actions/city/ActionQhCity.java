package actions.city;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.tuangou.NewCreateImp;
import dao.users.UsersDaoImp;
import forms.tuangou.TuanGouForm;
import forms.userform.UserForm;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

/**
 * 
 * @author liuyong
 * 
 */
public class ActionQhCity implements Action {

	UsersDaoImp userdao = new UsersDaoImp();
	NewCreateImp newcreate = new NewCreateImp();

	/**
	 * 
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		// 从session中得到参数userform
		UserForm uf = (UserForm) request.getSession().getAttribute("userform");
		// 从session中得到参数city
		String city = (String) request.getSession().getAttribute("city");
		if (uf != null) {
			//如果city不为null,从uf中得到city名赋值给city
			city = uf.getCity();
		} else if (uf == null) {
			//默认为长沙
			city = "changsha";
			request.getSession().setAttribute("showcity", "长沙");
		}
		
		List<TuanGouForm> tuangou = newcreate.qiehuanCity(city);
		request.getSession().setAttribute("todaytuangou", tuangou);
		ActionForward forward = mapping.getForwards().get("ok");
		return forward;
	}
}
