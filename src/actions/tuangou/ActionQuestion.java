package actions.tuangou;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.question.QuestionDaoImp;
import forms.questionform.QuestionForm;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
/**
 * 
 * @author liuyong
 *
 */
public class ActionQuestion implements Action {
	QuestionDaoImp qd = new QuestionDaoImp();

	/**
	 * 
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		String title = ((QuestionForm) form).getDealid();
		String info = ((QuestionForm) form).getInfo();
		String user = ((QuestionForm) form).getUser();
		boolean ok = qd.TiWen(title,info, user);
		if (ok) {
			forward = mapping.getForwards().get("success");
		}
		return forward;
	}
}
