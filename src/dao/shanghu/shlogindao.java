package dao.shanghu;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dao.jdbc.DbUtil;

/**
 * …Ãªßµ«¬Ω
 * 
 * @author —’√Ù
 * 
 */
public class shlogindao {
	DbUtil db = new DbUtil();

	public boolean shlogin(String name, String password) {
		boolean ok = false;
		ArrayList list = new ArrayList();
		String sql = "select password from trader where name=?";
		list.add(name);
		ResultSet rs = db.executeQuery(sql, list);
		try {
			if (rs.next()) {
				String pw = rs.getString("password");
				if (pw.equals(password)) {
					ok = true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ok;
	}
}
