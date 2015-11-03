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
 * 编辑团购信息
 * @author liumiaoyue
 *
 */
public class ActionBianJi implements Action {
	/**
	 * 编辑团购信息
	 * @param form
	 * @param mapping
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		NewCreateDao dao =new NewCreateImp();
		HttpSession session =request.getSession();
		//得到要编辑信息的id
		int fid =Integer.valueOf(request.getParameter("fid"));
		TuanGouForm bjform=dao.getBianJiInfo(fid);
		//放session中
		session.setAttribute("fid", fid);
		session.setAttribute("bjform", bjform);
		forward = mapping.getForwards().get("success");
		return forward;
	}
	

}
