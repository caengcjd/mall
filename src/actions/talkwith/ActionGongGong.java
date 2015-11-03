package actions.talkwith;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.talk.TalkWithDao;
import dao.talk.TalkWithImp;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

/**
 * 公共讨论区
 * @author liumiaoyue
 *
 */
public class ActionGongGong implements Action {
	/**
	 *公共讨论区
	 * 
	 * @param form
	 * @param mapping
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		TalkWithDao dao = new TalkWithImp();
		HttpSession session = request.getSession();
		List glist=dao.getAddressInfo("g");
		session.setAttribute("glist",glist);
		forward = mapping.getForwards().get("success");
		return forward;
	}
}
