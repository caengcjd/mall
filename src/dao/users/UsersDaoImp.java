package dao.users;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.jdbc.DbUtil;
import forms.userform.UserForm;

public class UsersDaoImp implements UsersDao {
	DbUtil db = new DbUtil();

	public List<UserForm> getAllUser() {
		List list = new ArrayList();
		String sql = "SELECT * FROM Mt_User";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				UserForm uf = new UserForm();
				uf.setUid(rs.getInt(1));
				uf.setUsername(rs.getString(2));
				uf.setPassword(rs.getString(3));
				uf.setCity(rs.getString(4));
				uf.setEmail(rs.getString(5));
				uf.setMobile(rs.getString(6));
				uf.setUmoney(rs.getString(7));
				uf.setAdminister(rs.getString(8));
				uf.setDate(rs.getString(9));
				list.add(uf);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}

	public boolean addUser(String name, String password, String city,
			String email, String mobile) {
		boolean a = false;
		List list = new ArrayList();
		list.add(name);
		list.add(password);
		list.add(city);
		list.add(email);
		list.add(mobile);
		String sql = "insert into Mt_User (username,upassword,city,email,mobile,zhucetime)values(?,?,?,?,?,now())";
		int i = db.executeUpdate(sql, list);
		if (i > 0) {
			a = true;
		}
		db.closeAll();
		return a;
	}

	public int getNum() {
		int num = 0;
		String sql = "SELECT count(uid) from Mt_User";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			if (rs.next()) {
				num = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		db.closeAll();
		return num;
	}

	public UserForm getUser(int id) {
		String sql = "SELECT * FROM Mt_User WHERE uid = " + id + " ";
		UserForm uf = null;
		ResultSet rs = db.executeQuery(sql, null);
		try {
			if (rs.next()) {
				uf = new UserForm();
				uf.setUid(rs.getInt(1));
				uf.setUsername(rs.getString(2));
				uf.setPassword(rs.getString(3));
				uf.setCity(rs.getString(4));
				uf.setEmail(rs.getString(5));
				uf.setMobile(rs.getString(6));
				uf.setUmoney(rs.getString(7));
				uf.setAdminister(rs.getString(8));
				uf.setDate(rs.getString(9));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return uf;
	}

	public boolean changeUser(int id, String mobile, String administer) {
		boolean a = false;
		String sql = "UPDATE Mt_User SET mobile='" + mobile + "',administer='"
				+ administer + "' WHERE uid=" + id + "";
		int i = db.executeUpdate(sql, null);
		if (i > 0) {
			a = true;
		}
		db.closeAll();
		return a;
	}

	public boolean PangDuanName(String name) {
		boolean a = false;
		String sql="select * from Mt_User where username='"+name+"' ";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			if(rs.next()){
				a = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return a;
	}
}
