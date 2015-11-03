package dao.shanghu;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.jdbc.DbUtil;
import forms.shanghu.BianjiForm;
import forms.shanghu.NewshForm;
import forms.shanghu.ShanghuForm;

/**
 * 商户
 * 
 * @author 颜敏
 * 
 */
public class Shanghudao {
	DbUtil db = new DbUtil();

	/**
	 * 商户列表
	 * 
	 * @return
	 */
	public List<ShanghuForm> getAll() {
		List<ShanghuForm> list = new ArrayList<ShanghuForm>();
		String sql = "select * from trader  ORDER BY id DESC";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				ShanghuForm sf = new ShanghuForm();
				sf.setId(rs.getInt(1));
				sf.setName(rs.getString(2));
				sf.setPassword(rs.getString(3));
				sf.setCustomerName(rs.getString(4));
				sf.setInterAdress(rs.getString(5));
				sf.setPeople(rs.getString(6));
				sf.setKhBank(rs.getString(7));
				sf.setKhName(rs.getString(8));
				sf.setBankzf(rs.getString(9));
				sf.setWeizhiinfo(rs.getString(10));
				sf.setQitainfo(rs.getString(11));
				sf.setTime(rs.getString(12));
				list.add(sf);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 删除商户
	 * 
	 * @param id
	 * @return
	 */
	public int delete(int id) {
		ArrayList list = new ArrayList();
		String sql = "delete from trader where id=?";
		list.add(id);
		int n = db.executeUpdate(sql, list);
		return n;
	}

	/**
	 * 新建商户
	 * 
	 * @param sf
	 * @return
	 */
	public int addsh(NewshForm nf) {
		ArrayList list = new ArrayList();
		String sql = "insert into trader(name,password,customerName,interAdress,people,khBank,khName,bankzf,time) values(?,?,?,?,?,'','','',now())";
		list.add(nf.getName());
		list.add(nf.getPassword());
		list.add(nf.getCustomerName());
		list.add(nf.getInterAdress());
		list.add(nf.getPeople());
		int n = db.executeUpdate(sql, list);
		db.closeAll();
		return n;
	}

	/**
	 * 商户编辑信息
	 * 
	 * @param bj
	 * @return
	 */
	public int bianji(BianjiForm bj) {
		ArrayList list = new ArrayList();

		String sql = "UPDATE trader SET name =?,"
				+ "password=?, customerName=?,"
				+ "interAdress=?,people=?,khBank=?,"
				+ "khName=?,bankzf=?,weizhiinfo=?," + "qitainfo=? WHERE id=?";
		list.add(bj.getName());
		list.add(bj.getPassword());
		list.add(bj.getCustomerName());
		list.add(bj.getInterAdress());
		list.add(bj.getPeople());
		list.add(bj.getKhBank());
		list.add(bj.getKhName());
		list.add(bj.getBankzf());
		list.add(bj.getWeizhiinfo());
		list.add(bj.getQitainfo());
		list.add(bj.getId());
		int n = db.executeUpdate(sql, list);
		return n;
	}
}
