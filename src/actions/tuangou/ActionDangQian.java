package actions.tuangou;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.tuangou.NewCreateDao;
import dao.tuangou.NewCreateImp;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
/**
 * �õ���ǰ�Ź���Ϣ
 * @author liumiaoyue
 *
 */
public class ActionDangQian implements Action {
	/**
	 *
	 * �õ���ǰ�Ź���Ϣ
	 * @param form
	 * @param mapping
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		forward = mapping.getForwards().get("success");
		return forward;
	}
}
