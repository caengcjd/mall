package actions.city;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.tuangou.NewCreateImp;

import forms.tuangou.TuanGouForm;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
/**
 * 
 * @author liuyong
 *
 */
public class ActionOneCity implements Action {
	
	NewCreateImp newcreate = new NewCreateImp();
	/**
	 * 
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		String zwcity = "";
		//从请求中得到city参数
		String city = request.getParameter("city");
		if(city.equals("changsha")){
			zwcity = "长沙";
		}else{
			zwcity="济南";
		}
		request.getSession().setAttribute("showcity", zwcity);
		//调用qiehuanCity,把city传进去
		List<TuanGouForm> tuangou = newcreate.qiehuanCity(city);
		//把todaytuangou放入到session中
		request.getSession().setAttribute("todaytuangou", tuangou);
		//跳网页success
		ActionForward forward = mapping.getForwards().get("success");
		return forward;
	}

}
