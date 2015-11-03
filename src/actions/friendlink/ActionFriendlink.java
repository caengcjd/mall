package actions.friendlink;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.friendlink.FriendlinkDaoImp;
import forms.friendlinkform.FriendlinkForm;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

/**
 * 
 * @author liuyong
 * 
 */
public class ActionFriendlink implements Action {
	FriendlinkDaoImp friend = new FriendlinkDaoImp();

	/**
	 * 
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		int id = ((FriendlinkForm) form).getId();
		String title = ((FriendlinkForm) form).getTitle();
		String url = ((FriendlinkForm) form).getUrl();
		String logo = ((FriendlinkForm) form).getLogo();
		boolean a = friend.changLink(id, title, url, logo);
		if (a) {
			forward = mapping.getForwards().get("success");
		}
		return forward;
	}
}
