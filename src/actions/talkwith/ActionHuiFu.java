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
 * 多条回复并显示
 * @author liumiaoyue
 *
 */
public class ActionHuiFu implements Action {
	/**
	 * 多条回复并显示
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
		//得到评论id和回复id 
		String id =request.getParameter("tid");
		String nid =request.getParameter("hid");
		if(!"".equals(id)){
			int tid =Integer.valueOf(id);
			//得到评论放入session
			TalkWithForm hfform =dao.getAInfo(tid);
			session.setMaxInactiveInterval(3000);
			session.setAttribute("hfform", hfform);
		}
		if(nid!=null){
			//包装评论id和回复id 
			int hfid =Integer.valueOf(nid);
			int tid =Integer.valueOf(id);
			//回复评论
			boolean ok=dao.addHFInfo(hfid,huifu.getHinfo(), huifu.getHtime(),name);
			if(ok==true){
				//并得到回复评论
				List hlist=dao.getHFInfo(tid,name);
				session.setAttribute("hlist", hlist);
			}
		}
		forward = mapping.getForwards().get("success");
		return forward;
	}

}
