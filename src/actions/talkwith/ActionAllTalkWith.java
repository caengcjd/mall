package actions.talkwith;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
import dao.talk.PageBean;
import forms.talkform.TalkWithForm;

/**
 * 查看所有讨论
 * @author liumiaoyue
 * 
 */
public class ActionAllTalkWith implements Action {
	/**
	 * 查看所有讨论
	 * @param form
	 * @param mapping
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		HttpSession session = request.getSession();
		//得到哪页讨论信息
		String num = request.getParameter("num");
		//分页 PageBean
		PageBean pb = new PageBean();
		//判断num是否为空，为空默认为1，并进行包装
		if (num == null) {
			num = "1";
			int n = Integer.valueOf(num);
		}
		//不为空则包装
		int n = Integer.valueOf(num);
		//得到页数如果当前页为最后一页则点击则为本页
		pb.getPage(n);
		if (n == (pb.getCountpage() + 1)) {
			n = pb.getCountpage();
		}
		
		List<TalkWithForm> list = pb.getPage(n);
		pb.setCurrpage(n);
		//list放入session中
		session.setAttribute("currpage", pb.getCurrpage());
		session.setAttribute("page", pb.getCountpage());
		session.setAttribute("slist", list);
		forward = mapping.getForwards().get("success");
		return forward;
	}
}
