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
 * �ύ��������
 * @author sjx
 *
 */
public class TiJiaoDandang implements Action {
	DdDaoImp dd = new DdDaoImp();
	List<String> list = new ArrayList<String>();
	
	/**
	 * �ύ��������
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		//ͨ�����ڶ���Form�õ�Dname��Dtitle,Dmoney,Dnumber
		String user = ((DqddForm)form).getDname();//�Ñ���
		String title= ((DqddForm)form).getDtitle();//��Ʒ��
		String money = ((DqddForm)form).getDmoney();
		String number = ((DqddForm)form).getDnumber();
		//ͨ���û����õ�������Ʒ����
		list = dd.getMtopic(user);
		if(list.size() == 0){
			//���list��null����addDindang
			dd.addDindang(user,title,money,number);
		}
		for (int i = 0; i < list.size(); i++) {
			if(!(list.get(i).equals(title))){
				//�����Ʒ���Ʋ�ͬ����addDindang
				dd.addDindang(user,title,money,number);
			}else{
				break;
			}
		}
		//�õ��˻����dyue,��������λ .00
		String v = request.getParameter("dyue");
		int b = v.indexOf(".");
		String qian = v.substring(0,b);
		//�˻����
		int c = Integer.parseInt(qian);
		//��Ʒ�۸�
		int d = Integer.parseInt(money);
		//��yue��jiage����session
		request.getSession().setAttribute("yue", c);
		request.getSession().setAttribute("jiage", d);
		//��ok��Action
		forward = mapping.getForwards().get("ok");
		return forward;
	}
}
