package actions.city;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.city.CityDaoImp;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

/**
 * ����ɾ����
 * @author ����
 *
 */
public class ActionCityDelLink  implements Action {
    CityDaoImp dao = new CityDaoImp();
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
	    ActionForward forward = null;
	    int cityID = Integer.parseInt(request.getParameter("cityID"));  //�õ�Ҫɾ����ID
	    boolean a = dao.delLink(cityID);//��ID����CityDaoImp��delLink()�ķ�����
	    if(a){
	    	forward = mapping.getForwards().get("success"); 
	    }
		return forward;
	}

}
