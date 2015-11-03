package dao.city;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import dao.jdbc.DbUtil;
import forms.city.CityForm;
import forms.friendlinkform.FriendlinkForm;
/**
 * 实现dao层
 * @author 黄林
 *
 */
public  class CityDaoImp implements CityDao {
	
	/**
	 *添加城市列表
	 */
	DbUtil db = new DbUtil();

	//public  List alllink;
	
	public boolean addLink(String chinesscity, String eginashcity,
			String eginash, String fenzhu, String paixu) {
		boolean a = false;
		List list = new ArrayList();
		list.add(chinesscity); //添加chinesscity
		list.add(eginashcity);//添加eginashcity
		list.add(eginash);//添加eginash
		list.add(fenzhu);//添加fenzhu
		list.add(paixu);//添加paixu
		String sql = "insert into City values (? , ? , ? , ? , ?)";//插入City数据库的SQL代码
		int i = db.executeUpdate(sql, list); 
		if (i > 0) {
			a = true;
		}

		return a;
	}
	
/**
 * 删除城市列表类
 */
	public boolean delLink(int CityID) {
		boolean a = false;
		String sql = "DELETE FROM City WHERE cityID=" + CityID + "";//删除City数据库的SQL代码
		int i = db.executeUpdate(sql, null);
		if (i > 0) {
			a = true;
		}
		db.closeAll();
		return a;
	}
	
/**
 * 编辑城市列表类
 */
	public boolean gaiLink(int cityID, String chinesscity, String eginashcity,
			String eginash, String fenzhu, String paixu) {
		boolean a = false;
		String sql = "UPDATE City SET chinesscity='" + chinesscity
				+ "',eginashcity='" + eginashcity + "',eginash='" + eginash
				+ "' ,fenzhu='" + fenzhu + "' ,paixu='" + paixu
				+ "' WHERE cityID=" + cityID + " ;"; //修改City数据库的SQL代码
		int i = db.executeUpdate(sql, null);
		if (i > 0) {
			a = true;
		}
		db.closeAll();
		return a;
	}
	
/**
 * 查询城市列表类
 */
	
	public List<FriendlinkForm> getAllLinker() {
		List list = new ArrayList();
		String sql = "SELECT * FROM City";//查询City数据库的SQL代码
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				CityForm city = new CityForm();
				city.setCityID(rs.getInt(1));  //得到cityID
				city.setChinesscity(rs.getString(2));//得到chinesscity
				city.setEginashcity(rs.getString(3));//得到eginashcity
				city.setEginash(rs.getString(4));//得到eginash
				city.setFenzhu(rs.getString(5));//得到fenzhu
				city.setPaixu(rs.getString(6));//得到paixu
				list.add(city);//添加到集合中
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
	    System.out.printf("the  city  info  is  the "+list);
		return list;
	}
}
