package dao.friendlink;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.jdbc.DbUtil;
import forms.friendlinkform.FriendlinkForm;

/**
 * 
 * @author liuyong
 * 
 */
public class FriendlinkDaoImp implements FriendlinkDao {
	DbUtil db = new DbUtil();
	FriendlinkForm friend = null;
	List list = new ArrayList();

	/**
	 * 添加一条友情链接
	 */
	public boolean addLink(String title, String url, String logo) {
		boolean a = false;
		List list = new ArrayList();
		list.add(title);
		list.add(url);
		list.add(logo);
		String sql = "INSERT INTO Friendlink VALUES (?,?,?)";
		int i = db.executeUpdate(sql, list);
		if (i > 0) {
			a = true;
		}
		db.closeAll();

		return a;
	}

	/**
	 * 查看全部的友情链接
	 */
	public List<FriendlinkForm> getAllLink() {
		String sql = "SELECT * FROM Friendlink";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				friend = new FriendlinkForm();
				friend.setId(rs.getInt(1));
				friend.setTitle(rs.getString(2));
				friend.setUrl(rs.getString(3));
				friend.setLogo(rs.getString(4));
				list.add(friend);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}

	/**
	 * 删除一条友情连接
	 */
	public boolean delLink(int id) {
		boolean a = false;
		String sql = "DELETE FROM Friendlink WHERE lid=" + id + "";
		int i = db.executeUpdate(sql, null);
		if (i > 0) {
			a = true;
		}
		db.closeAll();
		return a;
	}

	/**
	 * 
	 */
	public boolean changLink(int id, String title, String url, String logo) {
		boolean a = false;
		String sql = "UPDATE Friendlink SET ltitle='" + title + "',lurl='"
				+ url + "',logo='" + logo + "' WHERE lid=" + id + " ;";
		int i = db.executeUpdate(sql, null);
		if (i > 0) {
			a = true;
		}
		db.closeAll();
		return a;
	}
}
