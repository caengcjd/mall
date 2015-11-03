package actions.zhanghu;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
import dao.zhanghu.ZhanghuDaoImp;
import forms.tuangou.TuanGouForm;
import forms.zhanghu.BuyForm;
/**
 * 购买操作
 * @author sjx
 *
 */
public class ActionBuy implements Action {
	ZhanghuDaoImp dao = new ZhanghuDaoImp();

	/**
	 * 购买操作
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		//通过TunaGouForm得到Fid
		int id = ((TuanGouForm)form).getFid();
		HttpSession session =  request.getSession();
		TuanGouForm tgform = dao.getDqdd(id);
		session.setAttribute("id", id);
		session.setAttribute("tgform", tgform);
		forward = mapping.getForwards().get("success");
		return forward;
	}
}
