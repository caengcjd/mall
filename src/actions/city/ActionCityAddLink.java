package actions.city;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.city.CityDaoImp;
import forms.city.CityForm;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

/**
 * 添加城市类
 * @author 黄林
 *
 */

public class ActionCityAddLink implements Action {
	
	CityDaoImp dao = new CityDaoImp();

	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		String chinesscity = ((CityForm) form).getChinesscity();  //得到chinesscity
		String eginashcity = ((CityForm) form).getEginashcity(); //得到eginashcity
		String eginash = ((CityForm) form).getEginash();//得到eginash
		String fenzhu = ((CityForm) form).getFenzhu();//得到fenzhu
		String paixu = ((CityForm) form).getPaixu();//得到paixu
		boolean a = dao.addLink(chinesscity, eginashcity, eginash, fenzhu,
				paixu);  //把数值放入CityDaoImp的addLink()类中
		if (a) {
			forward = mapping.getForwards().get("success"); 
		}
		return forward; //返回值
	}
}
