package actions.tuangou;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.tuangou.NewCreateDao;
import dao.tuangou.NewCreateImp;
import forms.tuangou.TuanGouForm;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
/**
 * �����Ź���Ϣ
 * @author liumiaoyue
 *
 */
public class ActionUpdate implements Action {
	/**
	 *
	 * �����Ź���Ϣ
	 * @param form
	 * @param mapping
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		NewCreateDao dao = new NewCreateImp();
		TuanGouForm forms = (TuanGouForm) form;
		HttpSession session =request.getSession(false);
		//�õ�������Ϣ��id
		int fid =(Integer)session.getAttribute("fid");
		//���и���
		dao.updateInfo(fid,forms.getCity(), forms.getCategory(),
		forms.getTitle(), forms.getScprice(), forms.getTgprice(),
		forms.getSmallnum(), forms.getBignum(), forms
				.getBegintime(), forms.getEndtime(), forms
				.getClosetime(), forms.getIntroduce(), forms
				.getCue(), forms.getBusinessman(), forms
				.getSpname(), forms.getSpimg1(), forms.getSpimg2(),
		forms.getSpimg3(), forms.getOrderform());
		forward = mapping.getForwards().get("success");
		return forward;
	}
}
