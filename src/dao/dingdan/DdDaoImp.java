package dao.dingdan;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.jdbc.DbUtil;
import forms.dingdan.DqddForm;

public class DdDaoImp implements DdDao {
	DbUtil db = new DbUtil();
	
	/**
	 * 向 我的订单 数据库添加一条信息
	 */
	public boolean addDindang(String user, String title, String money,
			String number) {
		boolean a = false;
		List list = new ArrayList();
		list.add(title);
		list.add(user);
		list.add(number);
		list.add(money);
		String sql = "INSERT INTO mydingdan(mtopic,muser,mnumber,tmoney,xddtime) values(?,?,?,?,now())";
		int i = db.executeUpdate(sql, list);
		if (i > 0) {
			a = true;
		}
		db.closeAll();
		return a;
	}
	
	/**
	 * 得到所有订单
	 */
	public List<DqddForm> getAlldd() {
		List list = new ArrayList();
		String sql = "SELECT * FROM mydingdan";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				DqddForm dd = new DqddForm();
				dd.setDid(rs.getInt(1));
				dd.setDtitle(rs.getString(2));
				dd.setDname(rs.getString(3));
				dd.setDnumber(rs.getString(4));
				dd.setDmoney(rs.getString(5));
				dd.setStatus(rs.getString(6));
				dd.setXddtime(rs.getString(7));
				list.add(dd);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}
	
	/**
	 * 删除订单
	 */
	public boolean DelDd(int id) {
		boolean a = false;
		String sql = "DELETE FROM mydingdan WHERE mid = " + id + "";
		int i = db.executeUpdate(sql, null);
		if(i>0){
			a = true;
		}
		return a;
	}
	
	/**
	 * 通过用户名得到订单商品名称
	 */
	public List getMtopic(String user){
		String sql = "SELECT mtopic FROM mydingdan where muser = '"+ user +"'";
		List<String> list = new ArrayList();
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while(rs.next()){
				list.add(rs.getString("mtopic"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
