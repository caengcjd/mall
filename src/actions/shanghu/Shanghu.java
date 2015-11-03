package actions.shanghu;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.shanghu.Shanghudao;
import forms.shanghu.ShanghuForm;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

/**
 * 删除商户
 * 
 * @author 颜敏
 * 
 */
public class Shanghu implements Action {

	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		Shanghudao sd = new Shanghudao();
		// 得到id
		int id = (int) ((ShanghuForm) form).getId();
		// 调用dao层删除方法
		int i = sd.delete(id);
		if (i > 0) {
			forward = mapping.getForwards().get("mtsh");
		} else {
			forward = mapping.getForwards().get("fail");
		}
		return forward;
	}
}
