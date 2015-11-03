package actions.talkwith;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.talk.TalkWithDao;
import dao.talk.TalkWithImp;
import forms.talkform.TalkWithForm;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
/**
 * 发表新评论
 * @author liumiaoyue
 *
 */
public class ActionAnswers implements Action {
	/**
	 *
	 * 发表新评论
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
		TalkWithForm talk = (TalkWithForm) form;
		HttpSession session = request.getSession();
		//得到用户并添加到数据库
		String name=(String)session.getAttribute("username");
		boolean b = dao.addTalkInfo(talk.getSaddress(), talk.getStopic(), talk
				.getStime(), talk.getSinfo(),name);
		if (b == true) {
			//得到刚添加的信息
			TalkWithForm tform = dao.getAInfo();
			session.setAttribute("tform", tform);
			forward = mapping.getForwards().get("success");
		} else {
			forward = mapping.getForwards().get("fail");
		}
		return forward;
	}

}
