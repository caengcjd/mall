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
 * �༭������
 * @author ����
 *
 */
public class ActionCityGaiLink implements Action{
    CityDaoImp dao = new CityDaoImp();
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		int cityID =Integer.parseInt(request.getParameter("cityID")); //�õ�Ҫ�༭��ID
        String chinesscity = ((CityForm) form).getChinesscity(); //�õ����ĵ�chinesscity
	    String eginashcity = ((CityForm) form).getEginashcity();//�õ����ĵ�eginashcity
	    String eginash = ((CityForm) form).getEginash();//�õ����ĵ�eginash
	    String fenzhu = ((CityForm) form).getFenzhu();//�õ����ĵ�fenzhu
	    String paixu = ((CityForm) form).getPaixu();//�õ����ĵ�paixu
	    boolean a = dao.gaiLink(cityID, chinesscity, eginashcity, eginash, fenzhu, paixu); //����ֵ����CityDaoImp��gaiLink�ķ�����
	    if (a) {
			forward = mapping.getForwards().get("success");
		}
		return forward;
		
	}

}
