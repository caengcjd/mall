package actions.dingdan;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.dingdan.DdDaoImp;
import forms.dingdan.DqddForm;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
/**
 * 订单删除
 * @author sjx
 *
 */
public class DelDindang implements Action {
	DdDaoImp dd = new DdDaoImp();
	
	/**
	 * 订单删除
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		//通过当期订单Form得到Did
		int id = ((DqddForm)form).getDid();
		//传入id删除订单
		boolean a = dd.DelDd(id);
		if(a){
			//发送ok给Action
			forward = mapping.getForwards().get("ok");
		}
		return forward;
	}
}
