package actions.tuangou;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
import dao.tuangou.NewCreateDao;
import dao.tuangou.NewCreateImp;
/**
 * ɾ����ǰ��Ϣ
 * @author liumiaoyue
 *
 */
public class ActionDelInfo implements Action {
	/**
	 *
	 * ɾ����ǰ��Ϣ
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
		//ɾ�������Ź���Ϣ
		int fid = Integer.valueOf(request.getParameter("fid"));
		boolean b =dao.delInfo(fid);
		forward = mapping.getForwards().get("success");
		return forward;
	}
}
