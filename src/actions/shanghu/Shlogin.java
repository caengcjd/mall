package actions.shanghu;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.shanghu.shlogindao;
import forms.shanghu.shloginform;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

/**
 * �̻���½
 * 
 * @author ����
 * 
 */
public class Shlogin implements Action {

	shlogindao lg = new shlogindao();

	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {

		shloginform sf = (shloginform) form;
		// �õ�������
		String name = sf.getName();
		// �õ�������
		String password = sf.getPassword();
		ActionForward forward = null;
		boolean ok = lg.shlogin(name, password);
		if (ok) {
			forward = mapping.getForwards().get("success");
		} else {
			forward = mapping.getForwards().get("fail");
		}
		return forward;
	}

}
