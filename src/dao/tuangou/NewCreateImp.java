package dao.tuangou;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.jdbc.DbUtil;

import forms.talkform.TalkWithForm;
import forms.tuangou.TuanGouForm;

/**
 * 实现团购所有功能类
 * 
 * @author liumiaoyue
 * 
 */
public class NewCreateImp implements NewCreateDao {
	DbUtil db = new DbUtil();

	/**
	 * 添加团购信息
	 * 
	 * @param TuanGouForm
	 * @return boolean
	 */
	public boolean addTuanInfo(String city, String category, String title,
			String scprice, String tgprice, int smallnum, int bignum,
			String begintime, String endtime, String closetime,
			String introduce, String cue, String businessman, String spname,
			String spimg1, String spimg2, String spimg3, String orderform) {
		boolean ok = false;
		//System.out.println(city+category+title+scprice+tgprice+smallnum+bignum+begintime+endtime+closetime+introduce+cue+businessman+spname+spimg1+spimg2+spimg3+orderform);
		String sql ="insert into fellowship(city,category,title,scprice,tgprice,smallnum,bignum,begintime,endtime,closetime,introduce,cue,businessman,spname,spimg1,spimg2,spimg3,orderform) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		System.out.println("222");
		ArrayList lists = new ArrayList();
		lists.add(city);
		lists.add(category);
		lists.add(title);
		lists.add(scprice);
		lists.add(tgprice);
		lists.add(smallnum);
		lists.add(bignum);
		lists.add(begintime);
		lists.add(endtime);
		lists.add(closetime);
		lists.add(introduce);
		lists.add(cue);
		lists.add(businessman);
		lists.add(spname);
		lists.add(spimg1);
		lists.add(spimg2);
		lists.add(spimg3);
		lists.add(orderform);
		int i = db.executeUpdate(sql, lists);
		System.out.println("333");
		if (i != 0) {
			TuanGouForm form = new TuanGouForm(city, category, title, scprice,
					tgprice, smallnum, bignum, begintime, endtime, closetime,
					introduce, cue, businessman, spname, spimg1, spimg2,
					spimg3, orderform);
			ok = true;
		}
		db.closeAll();
		return ok;
	}

	/**
	 * 当前团购信息
	 * 
	 * @return List
	 */
	public List<TuanGouForm> getDangQianInfo() {
		List<TuanGouForm> list = new ArrayList();
		String sql = "select fid,introduce,category,begintime,endtime,smallnum,"
				+ " bignum,tgprice,scprice,city from Fellowship where begintime< now() and now()<endtime";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				TuanGouForm tg = new TuanGouForm();
				int fid = rs.getInt(1);
				String introduce = rs.getString(2);
				String category = rs.getString(3);
				String begintime = rs.getString(4);
				String endtime = rs.getString(5);
				int small = rs.getInt(6);
				int big = rs.getInt(7);
				String tgprice = rs.getString(8);
				String scprice = rs.getString(9);
				String city =rs.getString(10);
				tg.setFid(fid);
				tg.setIntroduce(introduce);
				tg.setCategory(category);
				tg.setBegintime(begintime);
				tg.setEndtime(endtime);
				tg.setBignum(big);
				tg.setSmallnum(small);
				tg.setScprice(scprice);
				tg.setTgprice(tgprice);
				tg.setCity(city);
				list.add(tg);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}

	/**
	 * 所有团购信息
	 * 
	 * @return List
	 */
	public List<TuanGouForm> getTuanGou() {
		//List<TuanGouForm> list = new ArrayList<TuanGouForm>();
		List list = new ArrayList();
		String sql = "SELECT * FROM Fellowship ";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				TuanGouForm tg = new TuanGouForm();
				tg.setFid(rs.getInt(1));
				tg.setCity(rs.getString(2));
				tg.setCategory(rs.getString(3));
				tg.setTitle(rs.getString(4));
				tg.setScprice(rs.getString(5));
				tg.setTgprice(rs.getString(6));
				tg.setSmallnum(rs.getInt(7));
				tg.setBignum(rs.getInt(8));
				tg.setBegintime(rs.getString(9));
				tg.setEndtime(rs.getString(10));
				tg.setClosetime(rs.getString(11));
				tg.setIntroduce(rs.getString(12));
				tg.setCue(rs.getString(13));
				tg.setBusinessman(rs.getString(14));
				tg.setSpname(rs.getString(15));
				tg.setSpimg1(rs.getString(16));
				tg.setSpimg2(rs.getString(17));
				tg.setSpimg3(rs.getString(18));
				tg.setOrderform(rs.getString(19));
				list.add(tg);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}

	/**
	 * 编辑信息
	 * 
	 * @param fid
	 * @return TuanGouForm
	 */
	public TuanGouForm getBianJiInfo(int fid) {
		String sql = "select *from Fellowship where fid=?";//?
		ArrayList lists = new ArrayList();
		lists.add(fid);
		ResultSet rs = db.executeQuery(sql, lists);
		TuanGouForm form = null;
		try {
			while (rs.next()) {
				String city = rs.getString(2);
				String category = rs.getString(3);
				String title = rs.getString(4);
				String scprice = rs.getString(5);
				String tgprice = rs.getString(6);
				int smallnum = rs.getInt(7);
				int bignum = rs.getInt(8);
				String begintime = rs.getString(9);
				String endtime = rs.getString(10);
				String closetime = rs.getString(11);
				String introduce = rs.getString(12);
				String cue = rs.getString(13);
				String businessman = rs.getString(14);
				String spname = rs.getString(15);
				String spimg1 = rs.getString(16);
				String spimg2 = rs.getString(17);
				String spimg3 = rs.getString(18);
				String orderform = rs.getString(19);
				form = new TuanGouForm(city, category, title, scprice, tgprice,
						smallnum, bignum, begintime, endtime, closetime,
						introduce, cue, businessman, spname, spimg1, spimg2,
						spimg3, orderform);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}

		return form;
	}

	/**
	 * 更新信息
	 * 
	 * @param TuanGouForm
	 * @return
	 */
	public boolean updateInfo(int fid, String city, String category,
			String title, String scprice, String tgprice, int smallnum,
			int bignum, String begintime, String endtime, String closetime,
			String introduce, String cue, String businessman, String spname,
			String spimg1, String spimg2, String spimg3, String orderform) {
		boolean ok = false;
		String sql = "update Fellowship  SET city=?, category=?, title=?, scprice=?,tgprice=?, smallnum=?, bignum=?, begintime=?, endtime=?, closetime=?,introduce=?, cue=?, businessman=?, spname=?, spimg1=?, spimg2=?,spimg3=?, orderform=? WHERE fid =?";
		ArrayList lists = new ArrayList();
		lists.add(city);
		lists.add(category);
		lists.add(title);
		lists.add(scprice);
		lists.add(tgprice);
		lists.add(smallnum);
		lists.add(bignum);
		lists.add(begintime);
		lists.add(endtime);
		lists.add(endtime);
		lists.add(closetime);
		lists.add(introduce);
		lists.add(cue);
		lists.add(businessman);
		lists.add(spname);
		lists.add(spimg1);
		lists.add(spimg2);
		lists.add(spimg3);
		lists.add(fid);
		int i = db.executeUpdate(sql, lists);
		if (i != 0) {
			TuanGouForm form = new TuanGouForm(city, category, title, scprice,
					tgprice, smallnum, bignum, begintime, endtime, closetime,
					introduce, cue, businessman, spname, spimg1, spimg2,
					spimg3, orderform);
			ok = true;
		}
		db.closeAll();
		return ok;
	}

	/**
	 * 删除信息
	 * 
	 * @param fid
	 * @return
	 */
	public boolean delInfo(int fid) {
		boolean ok = false;
		String sql = "delete Fellowship where fid=?";
		ArrayList lists = new ArrayList();
		lists.add(fid);
		int i = db.executeUpdate(sql, lists);
		if (i != 0) {
			ok = true;
		}
		db.closeAll();
		return ok;
	}
	
	/**
	 * 切换城市
	 */
	public List<TuanGouForm> qiehuanCity(String name) {
		TuanGouForm form = null;
		List list = new ArrayList();
		String sql = "SELECT * FROM Fellowship WHERE city = '"+ name+"'";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				int id = rs.getInt(1);
				String city = rs.getString(2);
				String category = rs.getString(3);
				String title = rs.getString(4);
				String scprice = rs.getString(5);
				String tgprice = rs.getString(6);
				int smallnum = rs.getInt(7);
				int bignum = rs.getInt(8);
				String begintime = rs.getString(9);
				String endtime = rs.getString(10);
				String closetime = rs.getString(11);
				String introduce = rs.getString(12);
				String cue = rs.getString(13);
				String businessman = rs.getString(14);
				String spname = rs.getString(15);
				String spimg1 = rs.getString(16);
				String spimg2 = rs.getString(17);
				String spimg3 = rs.getString(18);
				String orderform = rs.getString(19);
				form = new TuanGouForm(id,city, category, title, scprice, tgprice,
						smallnum, bignum, begintime, endtime, closetime,
						introduce, cue, businessman, spname, spimg1, spimg2,
						spimg3, orderform);
				list.add(form);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
