package actions.dingdan;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
import dao.dingdan.DdDaoImp;
import forms.dingdan.DqddForm;

/**
 * 提交订单操作
 * @author sjx
 *
 */
public class TiJiaoDandang implements Action {
	DdDaoImp dd = new DdDaoImp();
	List<String> list = new ArrayList<String>();
	
	/**
	 * 提交订单操作
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		//通过当期订单Form得到Dname，Dtitle,Dmoney,Dnumber
		String user = ((DqddForm)form).getDname();//用戶名
		String title= ((DqddForm)form).getDtitle();//商品名
		String money = ((DqddForm)form).getDmoney();
		String number = ((DqddForm)form).getDnumber();
		//通过用户名得到订单商品名称
		list = dd.getMtopic(user);
		if(list.size() == 0){
			//如果list為null、就addDindang
			dd.addDindang(user,title,money,number);
		}
		for (int i = 0; i < list.size(); i++) {
			if(!(list.get(i).equals(title))){
				//如果商品名称不同，就addDindang
				dd.addDindang(user,title,money,number);
			}else{
				break;
			}
		}
		//得到账户余额dyue,剪掉后两位 .00
		String v = request.getParameter("dyue");
		int b = v.indexOf(".");
		String qian = v.substring(0,b);
		//账户余额
		int c = Integer.parseInt(qian);
		//商品价格
		int d = Integer.parseInt(money);
		//把yue，jiage存入session
		request.getSession().setAttribute("yue", c);
		request.getSession().setAttribute("jiage", d);
		//发ok给Action
		forward = mapping.getForwards().get("ok");
		return forward;
	}
}
