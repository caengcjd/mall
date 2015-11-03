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

import forms.huifu.HuiFuForm;
import forms.talkform.TalkWithForm;
/**
 * �����ظ�����ʾ
 * @author liumiaoyue
 *
 */
public class ActionHuiFu implements Action {
	/**
	 * �����ظ�����ʾ
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
		HuiFuForm huifu = (HuiFuForm) form;
		String name=(String)session.getAttribute("username");
		TalkWithDao dao = new TalkWithImp();
		//�õ�����id�ͻظ�id 
		String id =request.getParameter("tid");
		String nid =request.getParameter("hid");
		if(!"".equals(id)){
			int tid =Integer.valueOf(id);
			//�õ����۷���session
			TalkWithForm hfform =dao.getAInfo(tid);
			session.setMaxInactiveInterval(3000);
			session.setAttribute("hfform", hfform);
		}
		if(nid!=null){
			//��װ����id�ͻظ�id 
			int hfid =Integer.valueOf(nid);
			int tid =Integer.valueOf(id);
			//�ظ�����
			boolean ok=dao.addHFInfo(hfid,huifu.getHinfo(), huifu.getHtime(),name);
			if(ok==true){
				//���õ��ظ�����
				List hlist=dao.getHFInfo(tid,name);
				session.setAttribute("hlist", hlist);
			}
		}
		forward = mapping.getForwards().get("success");
		return forward;
	}

}
