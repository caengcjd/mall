package actions.tuangou;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
import dao.tuangou.NewCreateDao;
import dao.tuangou.NewCreateImp;
import forms.tuangou.TuanGouForm;
/**
 * 新建团购信息
 * @author liumiaoyue
 *
 */
public class ActionNewCreate implements Action {
	/**
	 *
	 * 新建团购信息
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
		System.out.println(form);
		TuanGouForm forms = (TuanGouForm) form;
		System.out.println(forms.getCity()+forms.getCategory());
		
		
		boolean b = dao.addTuanInfo(forms.getCity(), forms.getCategory(), forms
				.getTitle(), forms.getScprice(), forms.getTgprice(), forms
				.getSmallnum(), forms.getBignum(), forms.getBegintime(), forms
				.getEndtime(), forms.getClosetime(), forms.getIntroduce(),
				forms.getCue(), forms.getBusinessman(), forms.getSpname(),
				forms.getSpimg1(), forms.getSpimg2(), forms.getSpimg3(), forms
						.getOrderform());
		System.out.println("bbb");
		if (b == true) {
			forward = mapping.getForwards().get("success");
		}else   forward=mapping.getForwards().get("fail");
		return forward;
	}

}