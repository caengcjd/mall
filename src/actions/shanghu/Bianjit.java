package actions.shanghu;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.shanghu.SelectOne;
import dao.shanghu.Shanghudao;
import forms.shanghu.BianjiForm;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

/**
 * 跳转到商户编辑
 * 
 * @author 颜敏
 * 
 */
public class Bianjit implements Action {

	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		// 调用Shanghudao层
		Shanghudao sd = new Shanghudao();
		BianjiForm bj = ((BianjiForm) form);
		// 得到id
		String shid = request.getParameter("id");
		// 把id转成int型
		int sid = Integer.parseInt(shid);
		// 调用SelectOne查询一个商户的的方法
		SelectOne se = new SelectOne();
		BianjiForm sbj = se.getAll(sid);
		// 把id放入Session
		request.getSession().setAttribute("sbj", sbj);
		int id = bj.getId();
		request.getSession().setAttribute("shid", id);
		request.setAttribute("shinfo", bj);
		forward = mapping.getForwards().get("shbj");
		return forward;
	}

}
