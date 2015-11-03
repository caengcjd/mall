package actions.city;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.city.CityDaoImp;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

/**
 * 城市删除类
 * @author 黄琳
 *
 */
public class ActionCityDelLink  implements Action {
    CityDaoImp dao = new CityDaoImp();
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
	    ActionForward forward = null;
	    int cityID = Integer.parseInt(request.getParameter("cityID"));  //得到要删除的ID
	    boolean a = dao.delLink(cityID);//把ID放入CityDaoImp的delLink()的方法中
	    if(a){
	    	forward = mapping.getForwards().get("success"); 
	    }
		return forward;
	}

}
