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
 * ����ɾ��
 * @author sjx
 *
 */
public class DelDindang implements Action {
	DdDaoImp dd = new DdDaoImp();
	
	/**
	 * ����ɾ��
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		//ͨ�����ڶ���Form�õ�Did
		int id = ((DqddForm)form).getDid();
		//����idɾ������
		boolean a = dd.DelDd(id);
		if(a){
			//����ok��Action
			forward = mapping.getForwards().get("ok");
		}
		return forward;
	}
}
