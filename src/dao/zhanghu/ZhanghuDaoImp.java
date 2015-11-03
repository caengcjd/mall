package dao.zhanghu;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.jdbc.DbUtil;
import forms.tuangou.TuanGouForm;
import forms.userform.UserForm;
import forms.zhanghu.ShopForm;

/**
 * �˻�DaoImp
 * @author sjx
 * 
 */
public class ZhanghuDaoImp implements ZhanghuDao {
	DbUtil db = new DbUtil();
	ResultSet rs;
	public static List alist = new ArrayList();
	
	/**
	 * 
	 */
	public TuanGouForm getDqdd(int id) {
		TuanGouForm tg = null;
		String sql = "SELECT fid,title ,spimg2,scprice,tgprice,orderform from Fellowship where fid="
				+ id + "";
		rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				tg = new TuanGouForm();
				tg.setFid(rs.getInt(1));
				tg.setTitle(rs.getString(2));
				tg.setSpimg2(rs.getString(3));
				tg.setScprice(rs.getString(4));
				tg.setTgprice(rs.getString(5));
				tg.setOrderform(rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return tg;
	}

	/**
	 * 
	 */
	public String getMoney(String username) {
		String a = null;
		String sql = "select umoney from Mt_User where username = '" + username
				+ "'";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			if (rs.next()) {

				a = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return a;
	}

	/**
	 * 
	 */
	public boolean ChongZhi(String name, String money) {
		boolean a = false;
		String sql = "UPDATE Mt_User SET umoney=umoney+ '" + money
				+ "'  WHERE username='" + name + "';";
		int i = db.executeUpdate(sql, null);
		if (i > 0) {
			a = true;
		}
		return a;
	}
	
	/**
	 * �����û����.
	 */
	public boolean DelMoney(String username, int endmoney) {
		boolean a = false;
		String sql = "UPDATE Mt_User SET umoney= '" + endmoney
				+ "' WHERE username='" + username + "'";
		int i = db.executeUpdate(sql, null);
		if (i > 0) {
			a = true;
		}
		return a;
	}
	
	/**
	 * ���ö�������״̬
	 * @param mid
	 * @param name �û���
	 * @return boolean
	 */
	public boolean setZt(String mid,String name){
		boolean a = false;
		String sql1 = "UPDATE mydingdan SET Status='�Ѹ���' WHERE mid = '"+ mid +"'and muser = '"+ name +"'";
		int j = db.executeUpdate(sql1, null);
		if (j > 0) {
			a = true;
		}
		return a;
	}
	
	/**
	 * �õ����û��ڶ�����������id
	 */
	public String getMAXMid(String username){
		String aa = null;
		String sql = "SELECT MAX(mid) from mydingdan where muser = '"+ username +"'";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			if(rs.next()){
				aa = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return aa;
	}

	/**
	 * 
	 */
	public int getTodayZc() {
		int fsa = 0;
		String sql = "select count(uid) from Mt_User where timestampdiff ( day , zhucetime  , now() ) = 0 ";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			if (rs.next()) {
				fsa = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return fsa;
	}
}
