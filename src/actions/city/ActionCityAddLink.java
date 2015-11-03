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
 * ��ӳ�����
 * @author ����
 *
 */

public class ActionCityAddLink implements Action {
	
	CityDaoImp dao = new CityDaoImp();

	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		String chinesscity = ((CityForm) form).getChinesscity();  //�õ�chinesscity
		String eginashcity = ((CityForm) form).getEginashcity(); //�õ�eginashcity
		String eginash = ((CityForm) form).getEginash();//�õ�eginash
		String fenzhu = ((CityForm) form).getFenzhu();//�õ�fenzhu
		String paixu = ((CityForm) form).getPaixu();//�õ�paixu
		boolean a = dao.addLink(chinesscity, eginashcity, eginash, fenzhu,
				paixu);  //����ֵ����CityDaoImp��addLink()����
		if (a) {
			forward = mapping.getForwards().get("success"); 
		}
		return forward; //����ֵ
	}
}
