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
 * 商户编辑类
 * 
 * @author 颜敏
 * 
 */
public class Bianji implements Action {
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		// 调用Shanghudao层
		Shanghudao sd = new Shanghudao();
		BianjiForm bj = ((BianjiForm) form);
		// 得到id
		String shid = request.getParameter("cityID");
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
