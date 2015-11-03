package actions.zhanghu;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.zhanghu.ZhanghuDaoImp;

import forms.userform.UserForm;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

public class ActionRemit implements Action {
	ZhanghuDaoImp zd = new ZhanghuDaoImp();

	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		String username = ((UserForm) form).getUsername();
		String money = ((UserForm) form).getUmoney();
		boolean a = zd.ChongZhi(username, money);
		if (a) {
			forward = mapping.getForwards().get("ok");
		}
		return forward;
	}

}
