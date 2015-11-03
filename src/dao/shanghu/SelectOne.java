package dao.shanghu;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dao.jdbc.DbUtil;
import forms.shanghu.BianjiForm;

/**
 * 查找一个商户
 * 
 * @author 颜敏
 * 
 */
public class SelectOne {
	DbUtil db = new DbUtil();

	public BianjiForm getAll(int id) {
		// 根据id查找一个商户
		String sql = "select * from trader where id =" + id + "";
		ResultSet rs = db.executeQuery(sql, null);
		BianjiForm sh = null;
		try {
			while (rs.next()) {
				String name = rs.getString(2);
				String pwd = rs.getString(3);
				String customerName = rs.getString(4);
				String interAdress = rs.getString(5);
				String people = rs.getString(6);
				String khBank = rs.getString(7);
				String khName = rs.getString(8);
				String bankzf = rs.getString(9);
				String weizhiinfo = rs.getString(10);
				String qitainfo = rs.getString(11);
				sh = new BianjiForm(name, pwd, customerName, interAdress,
						people, khBank, khName, bankzf, weizhiinfo, qitainfo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return sh;
	}
}
