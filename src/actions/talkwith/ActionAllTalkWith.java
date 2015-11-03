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
 * �鿴��������
 * @author liumiaoyue
 * 
 */
public class ActionAllTalkWith implements Action {
	/**
	 * �鿴��������
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
		//�õ���ҳ������Ϣ
		String num = request.getParameter("num");
		//��ҳ PageBean
		PageBean pb = new PageBean();
		//�ж�num�Ƿ�Ϊ�գ�Ϊ��Ĭ��Ϊ1�������а�װ
		if (num == null) {
			num = "1";
			int n = Integer.valueOf(num);
		}
		//��Ϊ�����װ
		int n = Integer.valueOf(num);
		//�õ�ҳ�������ǰҳΪ���һҳ������Ϊ��ҳ
		pb.getPage(n);
		if (n == (pb.getCountpage() + 1)) {
			n = pb.getCountpage();
		}
		
		List<TalkWithForm> list = pb.getPage(n);
		pb.setCurrpage(n);
		//list����session��
		session.setAttribute("currpage", pb.getCurrpage());
		session.setAttribute("page", pb.getCountpage());
		session.setAttribute("slist", list);
		forward = mapping.getForwards().get("success");
		return forward;
	}
}
