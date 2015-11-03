package actions.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.users.UsersDaoImp;

import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;

public class PanDuanName implements Action {
	UsersDaoImp dao = new UsersDaoImp();

	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {

		PrintWriter out = null;
		String username = request.getParameter("username");
		boolean ok = dao.PangDuanName(username);
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		if (ok) {
			out.print("该用户名已被注册");
		} else {
			out.print("该用户名可用");
		}
		return null;
	}
}
