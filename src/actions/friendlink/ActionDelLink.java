package actions.friendlink;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.friendlink.FriendlinkDaoImp;
import forms.friendlinkform.FriendlinkForm;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

public class ActionDelLink implements Action {
	FriendlinkDaoImp linkdao = new FriendlinkDaoImp();

	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		int id = ((FriendlinkForm) form).getId();
		boolean a = linkdao.delLink(id);
		if (a) {
			forward = mapping.getForwards().get("success");
		}
		return forward;
	}

}
