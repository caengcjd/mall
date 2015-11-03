package dao.question;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.jdbc.DbUtil;

import forms.questionform.QuestionForm;

/**
 * 
 * @author liuyong
 * 
 */
public class QuestionDaoImp implements QuestionDao {
	DbUtil db = new DbUtil();

	/**
	 * 
	 */
	public boolean TiWen(String title, String info, String user) {
		boolean a = false;
		List list = new ArrayList();
		list.add(title);
		list.add(info);
		list.add(user);

		String sql = "INSERT INTO mt_question (mtitle,minfo,mname)VALUES (?,?,?)";
		int i = db.executeUpdate(sql, list);
		if (i > 0) {
			a = true;
		}
		return a;
	}

	/**
	 * 
	 */
	public List<QuestionForm> getAllQ() {
		List list = new ArrayList();
		String sql = "SELECT * FROM  mt_question";

		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				QuestionForm que = new QuestionForm();
				que.setMid(rs.getInt(1));
				que.setDealid(rs.getString(2));
				que.setInfo(rs.getString(3));
				que.setUser(rs.getString(4));
				que.setAnswer(rs.getString(5));
				que.setTime(rs.getString(6));
				list.add(que);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean DelQuestion(int id) {
		boolean a = false;
		String sql = "DELETE FROM mt_question WHERE mid=" + id + "";
		int i = db.executeUpdate(sql, null);
		if (i > 0) {
			a = true;
		}
		return a;
	}

	/**
	 * 问题总条数
	 */
	public int getCount() {
		int num = 0;
		QuestionForm que = null;
		String sql = "SELECT COUNT(mid)FROM mt_question where manswer != '';";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			if (rs.next()) {
				num = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num;
	}

	/**
	 * 
	 */
	public boolean ChangeQue(int id, String info) {
		boolean a = false;
		String sql = "UPDATE mt_question SET manswer='" + info + "' WHERE mid="
				+ id + "";
		int i = db.executeUpdate(sql, null);
		if (i >= 0) {
			a = true;
		}
		return a;
	}

	public List<QuestionForm> CheckOne(int id) {
		List list = new ArrayList();
		String sql = "SELECT * FROM mt_question WHERE mid=" + id + "";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			if (rs.next()) {
				QuestionForm qf = new QuestionForm();
				qf.setMid(rs.getInt(1));
				qf.setDealid(rs.getString(2));
				qf.setInfo(rs.getString(3));
				qf.setUser(rs.getString(4));
				qf.setAnswer(rs.getString(5));
				list.add(qf);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<QuestionForm> getIndexQuestion() {
		List list = new ArrayList();
		String sql = "SELECT * FROM mt_question where manswer != '';";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				QuestionForm qu = new QuestionForm();
				qu.setInfo(rs.getString(2));
				list.add(qu);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
