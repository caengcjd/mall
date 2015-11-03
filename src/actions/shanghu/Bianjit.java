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
 * ��ת���̻��༭
 * 
 * @author ����
 * 
 */
public class Bianjit implements Action {

	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		// ����Shanghudao��
		Shanghudao sd = new Shanghudao();
		BianjiForm bj = ((BianjiForm) form);
		// �õ�id
		String shid = request.getParameter("id");
		// ��idת��int��
		int sid = Integer.parseInt(shid);
		// ����SelectOne��ѯһ���̻��ĵķ���
		SelectOne se = new SelectOne();
		BianjiForm sbj = se.getAll(sid);
		// ��id����Session
		request.getSession().setAttribute("sbj", sbj);
		int id = bj.getId();
		request.getSession().setAttribute("shid", id);
		request.setAttribute("shinfo", bj);
		forward = mapping.getForwards().get("shbj");
		return forward;
	}

}
