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
public class ActionDelQuestion implements Action {
	QuestionDaoImp quesdao = new QuestionDaoImp();

	/**
	 * 
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		int id = ((QuestionForm) form).getMid();
		boolean a = quesdao.DelQuestion(id);
		if (a) {
			forward = mapping.getForwards().get("success");
		}
		return forward;
	}
}
