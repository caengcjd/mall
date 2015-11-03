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
 * 编辑城市类
 * @author 黄林
 *
 */
public class ActionCityGaiLink implements Action{
    CityDaoImp dao = new CityDaoImp();
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		int cityID =Integer.parseInt(request.getParameter("cityID")); //得到要编辑的ID
        String chinesscity = ((CityForm) form).getChinesscity(); //得到更改的chinesscity
	    String eginashcity = ((CityForm) form).getEginashcity();//得到更改的eginashcity
	    String eginash = ((CityForm) form).getEginash();//得到更改的eginash
	    String fenzhu = ((CityForm) form).getFenzhu();//得到更改的fenzhu
	    String paixu = ((CityForm) form).getPaixu();//得到更改的paixu
	    boolean a = dao.gaiLink(cityID, chinesscity, eginashcity, eginash, fenzhu, paixu); //把数值放入CityDaoImp的gaiLink的方法中
	    if (a) {
			forward = mapping.getForwards().get("success");
		}
		return forward;
		
	}

}
