package dao.talk;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import dao.jdbc.DbUtil;
import forms.huifu.HuiFuForm;
import forms.talkform.TalkWithForm;

/**
 * 
 * 实现讨论所有功能
 * 
 * @author liumiaoyue
 * 
 */
public class TalkWithImp implements TalkWithDao {
	DbUtil db = new DbUtil();

	/**
	 * 得到所有信息
	 * 
	 * @return List
	 */
	public List<TalkWithForm> getTalkInfo() {
		List<TalkWithForm> list = new ArrayList();
		String sql = "select * from talkwith ";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				int tid = rs.getInt(1);
				String stopic = rs.getString(2);
				String saddress = rs.getString(4);
				String stime = rs.getString(5);
				String sinfo = rs.getString(6);
				String name = rs.getString(3);
				TalkWithForm talk = new TalkWithForm(tid, saddress, stopic,
						stime, sinfo);
				talk.setNum(getHuiFuNum(tid));
				talk.setTuser(name);
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
	 * 得到一条评论信息
	 * 
	 * @return TalkWithForm
	 */
	public TalkWithForm getAInfo() {
		String sql = "select * from talkwith  order by tid asc";
		ArrayList<TalkWithForm> lists = new ArrayList();
		ResultSet rs = db.executeQuery(sql, null);
		TalkWithForm talk = null;
		try {
			while (rs.next()) {
				int tid = rs.getInt(1);
				String stopic = rs.getString(2);
				String name = rs.getString(3);
				String saddress = rs.getString(4);
				String stime = rs.getString(5);
				String sinfo = rs.getString(6);
				talk = new TalkWithForm(tid, saddress, stopic, stime, sinfo);
				talk.setTuser(name);
				lists.add(talk);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}

		return talk;
	}

	/**
	 * 
	 * 添加评论信息
	 * 
	 * @param saddress
	 * @param stopic
	 * @param stime
	 * @param sinfo
	 * @return boolean
	 */
	public boolean addTalkInfo(String saddress, String stopic, String stime,
			String sinfo, String name) {
		boolean ok = false;
		Date date = new Date();
		String time = date.toLocaleString();
		String sql = "insert into talkwith(saddress,stopic,stime,sinfo,tuser) values(?,?,?,?,?)";
		ArrayList lists = new ArrayList();
		lists.add(saddress);
		lists.add(stopic);
		lists.add(time);
		lists.add(sinfo);
		lists.add(name);
		int i = db.executeUpdate(sql, lists);
		if (i != 0) {
			TalkWithForm talk = new TalkWithForm();
			talk.setStopic(stopic);
			talk.setSaddress(saddress);
			talk.setStime(time);
			talk.setSinfo(sinfo);
			talk.setTuser(name);
			ok = true;
		}
		db.closeAll();
		return ok;
	}

	/**
	 * 
	 * 得到一条刚评论的信息
	 * 
	 * @param tid
	 * @return TalkWithForm
	 */
	public TalkWithForm getAInfo(int tid) {
		String sql = "select * from talkwith where tid =?";
		ArrayList lists = new ArrayList();
		lists.add(tid);
		ResultSet rs = db.executeQuery(sql, lists);
		TalkWithForm talk = null;
		try {
			while (rs.next()) {
				String stopic = rs.getString(2);
				String saddress = rs.getString(4);
				String name = rs.getString(3);
				String stime = rs.getString(5);
				String sinfo = rs.getString(6);
				talk = new TalkWithForm(tid, saddress, stopic, stime, sinfo);
				talk.setTuser(name);
				System.out.println("name......." + name);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}

		return talk;
	}

	/**
	 * 
	 * 得到区域评论
	 * 
	 * @param saddress
	 * @return List
	 */
	public List<TalkWithForm> getAddressInfo(String saddress) {
		List<TalkWithForm> list = new ArrayList();
		String sql = "select * from talkwith where saddress=?";
		ArrayList lists = new ArrayList();
		lists.add(saddress);
		ResultSet rs = db.executeQuery(sql, lists);
		try {
			while (rs.next()) {
				int tid = rs.getInt(1);
				String stopic = rs.getString(2);
				String name = rs.getString(3);
				String stime = rs.getString(5);
				String sinfo = rs.getString(6);
				TalkWithForm talk = new TalkWithForm(tid, saddress, stopic,
						stime, sinfo);
				talk.setNum(getHuiFuNum(tid));
				talk.setTuser(name);
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
	 * 
	 * 添加回复信息
	 * 
	 * @param hfid
	 * @param hinfo
	 * @param htime
	 * @return boolean
	 */
	public boolean addHFInfo(int hfid, String hinfo, String htime, String name) {
		boolean ok = false;
		Date date = new Date();
		String time = date.toLocaleString();
		String sql = "insert into huifu(hfid,hinfo,htime) values(?,?,?)";
		ArrayList lists = new ArrayList();
		lists.add(hfid);
		lists.add(hinfo);
		lists.add(time);
		int i = db.executeUpdate(sql, lists);
		if (i != 0) {
			HuiFuForm hf = new HuiFuForm();
			hf.setHfid(hfid);
			hf.setHinfo(hinfo);
			hf.setHtime(time);
			hf.setHuser(name);
			ok = true;
		}
		db.closeAll();
		return ok;
	}

	/**
	 * 得到所有回复信息
	 * 
	 * @param hfid
	 * @return List
	 */
	public List<HuiFuForm> getHFInfo(int hfid, String name) {
		String sql = "select hinfo,htime from huifu where hfid=?";
		ArrayList lists = new ArrayList();
		lists.add(hfid);
		ResultSet rs = db.executeQuery(sql, lists);
		List<HuiFuForm> list = new ArrayList();
		HuiFuForm hf = null;
		try {
			while (rs.next()) {
				String hinfo = rs.getString(1);
				String htime = rs.getString(2);
				hf = new HuiFuForm(hfid, hinfo, htime);
				hf.setHuser(name);
				list.add(hf);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}

		return list;
	}

	/**
	 * 回复条数
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
				System.out.println("num" + num);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}

}
