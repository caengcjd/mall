package dao.wzmt;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.jdbc.DbUtil;
import forms.tuangou.WqtgForm;
import forms.tuangou.Wqtgforms;
import forms.tuangou.wqtgfroms;

/**
 * WqtgForm �����Ź� ����
 * 
 */
public class Wqtgdao {
	DbUtil db = new DbUtil();

	public List<WqtgForm> getAll() {
		List<WqtgForm> list = new ArrayList<WqtgForm>();
		String sql = "select * from Fellowship where endtime < now()";//ע�⺯��Ŷ
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				WqtgForm wf = new WqtgForm();
				wf.setFid(rs.getInt(1));
				wf.setCity(rs.getString(2)); // ����
				wf.setCategory(rs.getString(3)); // ���
				wf.setTitle(rs.getString(4)); // �Ź�����
				wf.setScprice(rs.getString(5)); // �г���
				wf.setTgprice(rs.getString(6)); // �Ź���
				wf.setSmallnum(rs.getString(7)); // �������
				wf.setBignum(rs.getString(8)); // �������
				wf.setBegintime(rs.getString(9)); // ��ʼʱ��
				wf.setEndtime(rs.getString(10)); // ����ʱ��
				wf.setClosetime(rs.getString(11)); // �ر�ʱ��
				wf.setIntroduce(rs.getString(12)); // ���Ž���
				wf.setCue(rs.getString(13)); // �ر���ʾ
				wf.setBusinessman(rs.getString(14)); // �̻�
				wf.setSpname(rs.getString(15)); // ��Ʒ����
				wf.setSpimg1(rs.getString(16)); // ��ƷͼƬ1
				wf.setSpimg2(rs.getString(17)); // ��ƷͼƬ2
				wf.setSpimg3(rs.getString(18)); // ��ƷͼƬ3
				wf.setOrderform(rs.getString(19)); // ��������
				list.add(wf);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * wqtgfroms
	 * 
	 * @param fid
	 * @return
	 */
	public wqtgfroms getWqtg(int fid) {
		String sql = "select * from Fellowship where fid=" + fid + "";//SQL injection
		ResultSet rs = db.executeQuery(sql, null);
		wqtgfroms wf = null;
		try {
			while (rs.next()) {
				Wqtgforms tf1 = new Wqtgforms(fid, sql, sql, sql, sql, sql,
						sql, sql, sql, sql, sql, sql, sql, sql, sql, sql, sql,
						sql, sql);
				String city = rs.getString(2);
				String category = rs.getString(3);
				String title = rs.getString(4);
				String scprice = rs.getString(5);
				String tgprice = rs.getString(6);
				String smallnum = rs.getString(7);
				String bignum = rs.getString(8);
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

				wf = new wqtgfroms(fid, city, category, title, scprice,
						tgprice, closetime, bignum, begintime, endtime,
						orderform, introduce, cue, businessman, spname, spimg1,
						spimg2, spimg3, orderform);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return wf;
	}
}
