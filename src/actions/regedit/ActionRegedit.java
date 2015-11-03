package actions.regedit;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.users.UsersDaoImp;
import mystruts.Action;
import mystruts.ActionForm;
import mystruts.ActionForward;
import mystruts.ActionMapping;
import forms.userform.UserForm;

/**
 * 
 * @author liuyong
 * 
 */
public class ActionRegedit implements Action {
	UsersDaoImp userdao = new UsersDaoImp();
	/**
	 * 
	 */
	public ActionForward execute(ActionForm form, ActionMapping mapping,
			HttpServletRequest request, HttpServletResponse response) {

		ActionForward forward = null;
		String name = ((UserForm) form).getUsername();
		String passmd5 = Md5(((UserForm) form).getPassword());
		String mobile = ((UserForm) form).getMobile();
		String email = ((UserForm) form).getEmail();
		String city = ((UserForm) form).getCity();

		boolean a = userdao.addUser(name, passmd5, city, email,
				mobile);
		if (a) {
			request.getSession().setAttribute("regename", name);
			forward = mapping.getForwards().get("success");
		}
		return forward;
	}

	/**
	 * MD5º”√‹
	 * 
	 * @param plainText
	 * @return
	 */
	public static String Md5(String plainText) {
		StringBuffer buf = new StringBuffer("");
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(plainText.getBytes());
			byte b[] = md.digest();
			int i;
			for (int j = 0; j < b.length; j++) {
				i = b[j];
				if (i < 0)
					i += 256;
				if (i < 16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
			}
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return buf.toString();
	}
}
