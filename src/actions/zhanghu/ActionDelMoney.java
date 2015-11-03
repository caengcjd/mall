package actions.zhanghu;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.zhanghu.ZhanghuDaoImp;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
/**
 * �˻�����
 * @author 
 *
 */
public class ActionDelMoney implements Action {
	ZhanghuDaoImp dao = new ZhanghuDaoImp();
	
	/**
	 *�˻����� 
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward  = null;
		HttpSession session = request .getSession();
		//��session��ȡ��qian�û���Object obj = n
		String qian = (String)session.getAttribute("qian");
		//��jsp��ȡ��username��money
		String uname = request.getParameter("username");
		String money = request.getParameter("money");
		
		int n = 0;
		Object obj = session.getAttribute("n");
		if (null == obj) {
			session.setAttribute("n", 1);
		} else {
			String s = String.valueOf(obj);
			n = Integer.parseInt(s);
			n = n + 1;
			session.setAttribute("n", n);
		}
		
		
		int b = qian.indexOf(".");
		String dad = qian.substring(0,b);
		int c = Integer.parseInt(dad);
		int d = Integer.parseInt(money);
		//����ȥ��Ʒ�۸�
		int ion = c - d;
		//�����û����
		boolean sad = dao.DelMoney(uname, ion);
		//�õ���ǰ���
		String dmoney =dao.getMoney(uname);
		//����session  �������� money
		session.setAttribute("money", dmoney);
		//����uname�õ�����id
		String mid = dao.getMAXMid(uname);
		//���ö���״̬
		boolean sc = dao.setZt(mid, uname);
		//�����ΪTURE������ok������file
		if(sad && sc){
			forward = mapping.getForwards().get("ok");
			}else{
			forward = mapping.getForwards().get("file");
			}
		//����ok
		return forward;
	}

}
