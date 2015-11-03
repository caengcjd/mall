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
		//�������еõ�city����
		String city = request.getParameter("city");
		if(city.equals("changsha")){
			zwcity = "��ɳ";
		}else{
			zwcity="����";
		}
		request.getSession().setAttribute("showcity", zwcity);
		//����qiehuanCity,��city����ȥ
		List<TuanGouForm> tuangou = newcreate.qiehuanCity(city);
		//��todaytuangou���뵽session��
		request.getSession().setAttribute("todaytuangou", tuangou);
		//����ҳsuccess
		ActionForward forward = mapping.getForwards().get("success");
		return forward;
	}

}
