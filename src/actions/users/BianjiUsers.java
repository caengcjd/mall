package actions.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.users.UsersDaoImp;

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
public class BianjiUsers implements Action {
	UsersDaoImp userdao = new UsersDaoImp();

	/**
 * 
 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		int id = ((UserForm) form).getUid();
		UserForm usf = userdao.getUser(id);
		request.getSession().setAttribute("usf", usf);
		forward = mapping.getForwards().get("success");
		return forward;
	}
}
