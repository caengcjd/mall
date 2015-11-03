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
public class ActionGaiQuestion implements Action {
	QuestionDaoImp qd = new QuestionDaoImp();

	/**
	 * 
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		int id = ((QuestionForm) form).getMid();
		String info = ((QuestionForm) form).getInfo();
		boolean a = qd.ChangeQue(id, info);
		if (a) {
			forward = mapping.getForwards().get("success");
		}
		return forward;
	}
}
