package actions.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.users.UsersDaoImp;

import forms.userform.UserForm;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

public class ChangUser implements Action {
	UsersDaoImp userdao = new UsersDaoImp();
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		int id = ((UserForm) form).getUid();
		String mobile = ((UserForm) form).getMobile();
		String administer = ((UserForm) form).getAdminister();
		userdao.changeUser(id, mobile ,administer);
		
		forward = mapping.getForwards().get("success");
		return forward;
	}

}
