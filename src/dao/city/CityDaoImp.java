package dao.city;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import dao.jdbc.DbUtil;
import forms.city.CityForm;
import forms.friendlinkform.FriendlinkForm;
/**
 * ʵ��dao��
 * @author ����
 *
 */
public  class CityDaoImp implements CityDao {
	
	/**
	 *��ӳ����б�
	 */
	DbUtil db = new DbUtil();

	//public  List alllink;
	
	public boolean addLink(String chinesscity, String eginashcity,
			String eginash, String fenzhu, String paixu) {
		boolean a = false;
		List list = new ArrayList();
		list.add(chinesscity); //���chinesscity
		list.add(eginashcity);//���eginashcity
		list.add(eginash);//���eginash
		list.add(fenzhu);//���fenzhu
		list.add(paixu);//���paixu
		String sql = "insert into City values (? , ? , ? , ? , ?)";//����City���ݿ��SQL����
		int i = db.executeUpdate(sql, list); 
		if (i > 0) {
			a = true;
		}

		return a;
	}
	
/**
 * ɾ�������б���
 */
	public boolean delLink(int CityID) {
		boolean a = false;
		String sql = "DELETE FROM City WHERE cityID=" + CityID + "";//ɾ��City���ݿ��SQL����
		int i = db.executeUpdate(sql, null);
		if (i > 0) {
			a = true;
		}
		db.closeAll();
		return a;
	}
	
/**
 * �༭�����б���
 */
	public boolean gaiLink(int cityID, String chinesscity, String eginashcity,
			String eginash, String fenzhu, String paixu) {
		boolean a = false;
		String sql = "UPDATE City SET chinesscity='" + chinesscity
				+ "',eginashcity='" + eginashcity + "',eginash='" + eginash
				+ "' ,fenzhu='" + fenzhu + "' ,paixu='" + paixu
				+ "' WHERE cityID=" + cityID + " ;"; //�޸�City���ݿ��SQL����
		int i = db.executeUpdate(sql, null);
		if (i > 0) {
			a = true;
		}
		db.closeAll();
		return a;
	}
	
/**
 * ��ѯ�����б���
 */
	
	public List<FriendlinkForm> getAllLinker() {
		List list = new ArrayList();
		String sql = "SELECT * FROM City";//��ѯCity���ݿ��SQL����
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				CityForm city = new CityForm();
				city.setCityID(rs.getInt(1));  //�õ�cityID
				city.setChinesscity(rs.getString(2));//�õ�chinesscity
				city.setEginashcity(rs.getString(3));//�õ�eginashcity
				city.setEginash(rs.getString(4));//�õ�eginash
				city.setFenzhu(rs.getString(5));//�õ�fenzhu
				city.setPaixu(rs.getString(6));//�õ�paixu
				list.add(city);//��ӵ�������
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
