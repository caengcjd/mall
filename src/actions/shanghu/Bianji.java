package actions.shanghu;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
import dao.shanghu.SelectOne;
import dao.shanghu.Shanghudao;
import forms.shanghu.BianjiForm;

/**
 * �̻��༭��
 * 
 * @author ����
 * 
 */
public class Bianji implements Action {
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		// ����Shanghudao��
		Shanghudao sd = new Shanghudao();
		BianjiForm bj = ((BianjiForm) form);
		// �õ�id
		String shid = request.getParameter("cityID");
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
		String name = bj.getName();
		String password = bj.getPassword();
		String customerName = bj.getCustomerName();
		String interAdress = bj.getInterAdress();
		String people = bj.getPeople();
		String khBank = bj.getKhBank();
		String khName = bj.getKhName();
		String bankzf = bj.getBankzf();
		String weizhiinfo = bj.getWeizhiinfo();
		String qitainfo = bj.getQitainfo();

		bj.setName(name);
		bj.setPassword(password);
		bj.setCustomerName(customerName);
		bj.setInterAdress(interAdress);
		bj.setPeople(people);
		bj.setKhBank(khBank);
		bj.setKhName(khName);
		bj.setBankzf(bankzf);
		bj.setWeizhiinfo(weizhiinfo);
		bj.setQitainfo(qitainfo);
		bj.setId(id);
		sd.bianji(bj);
		forward = mapping.getForwards().get("shbj");
		return forward;
	}
}
