package dao.talk;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mystruts.ActionForm;
import dao.jdbc.DbUtil;
import forms.talkform.TalkWithForm;

/**
 * 数据分页
 * 
 * @author liumiaoyue
 * 
 */
public class PageBean extends ActionForm {

	private int num = 4;
	private int currpage;
	private int countpage;

	DbUtil db = new DbUtil();

	/**
	 * 得到页数
	 * 
	 * @return int 页数
	 */
	public int getPages() {
		String sql = "select count(tid) from talkwith";
		ResultSet rs = db.executeQuery(sql, null);
		int number = 0;
		try {
			if (rs.next()) {
				number = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		countpage = number / num;
		if (number % num != 0) {
			countpage++;
		}
		return countpage;
	}

	/**
	 * 得到哪页数据信息
	 * 
	 * @param page
	 * @return
	 */
	public List<TalkWithForm> getPage(int page) {
		getPages();
		List<TalkWithForm> list = new ArrayList();
		int i = (page - 1) * num;
		if (i < 0) {
			i = 0;
		}
		String sql = "select top " + num
				+ " * from talkwith where tid not in (select top " + i
				+ " tid from talkwith ) ";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				int tid = rs.getInt(1);
				String stopic = rs.getString(2);
				String name = rs.getString(3);
				String saddress = rs.getString(4);
				String stime = rs.getString(5);
				String sinfo = rs.getString(6);
				TalkWithForm talk = new TalkWithForm(tid, saddress, stopic,
						stime, sinfo);
				talk.setTuser(name);
				talk.setNum(getHuiFuNum(tid));
				list.add(talk);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;

	}

	/**
	 * 回复信息条数
	 * 
	 * @param hfid
	 * @return
	 */
	public int getHuiFuNum(int hfid) {
		int num = 0;
		String sql = "select count(hid) as num from huifu where  hfid=?";
		ArrayList lists = new ArrayList();
		lists.add(hfid);
		ResultSet rs = db.executeQuery(sql, lists);
		try {
			if (rs.next()) {
				num = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}

	public int getNum() {
		return num;
	}

	public int getCountpage() {
		return countpage;
	}

	public int getCurrpage() {
		return currpage;
	}

	public void setCurrpage(int currpage) {
		this.currpage = currpage;
	}

}
