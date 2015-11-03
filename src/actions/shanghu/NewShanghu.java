package actions.shanghu;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.shanghu.Shanghudao;
import forms.shanghu.NewshForm;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

/**
 * 新建商户
 * 
 * @author 颜敏
 * 
 */
public class NewShanghu implements Action {
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		// 调用商户Shanghudao
		Shanghudao sd = new Shanghudao();
		// 新建商户form
		NewshForm sf = ((NewshForm) form);
		// 得到表单内容
		String name = sf.getName();
		String password = sf.getPassword();
		String customerName = sf.getCustomerName();
		String interAdress = sf.getInterAdress();
		String people = sf.getPeople();
		// 设置表单内容
		sf.setName(name);
		sf.setPassword(password);
		sf.setCustomerName(customerName);
		sf.setInterAdress(interAdress);
		sf.setPeople(people);
		// 添加到数据库
		sd.addsh(sf);
		forward = mapping.getForwards().get("xjsh");
		return forward;
	}

}
