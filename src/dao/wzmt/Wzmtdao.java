package dao.wzmt;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.jdbc.DbUtil;
import forms.tuangou.WzmtForm;

/**
 * ÕÊ◊™√¿Õ≈dao
 * 
 * @author —’√Ù
 * 
 */
public class Wzmtdao {
	DbUtil db = new DbUtil();

	public List<WzmtForm> getAll() {
		List<WzmtForm> list = new ArrayList<WzmtForm>();
		String sql = "select * from wzmt";
		ResultSet rs = db.executeQuery(sql, null);
		try {
			while (rs.next()) {
				WzmtForm wf = new WzmtForm();
				wf.setFenxiang(rs.getString("fenxiang"));
				wf.setXiaofei(rs.getString("xiaofei"));
				wf.setPingjia(rs.getString("pingjia"));
				wf.setMtssh(rs.getString("mtssh"));
				wf.setMtsshnr(rs.getString("mtsshnr"));
				wf.setJttgbuzemgm(rs.getString("jttgbuzemgm"));
				wf.setJttgbuzemgmnr(rs.getString("jttgbuzemgmnr"));
				wf.setRhfk(rs.getString("rhfk"));
				wf.setRhfknr(rs.getString("rhfknr"));
				wf.setTgrsbz(rs.getString("tgrsbz"));
				wf.setTgrsbznr(rs.getString("tgrsbznr"));
				wf.setShsmtj(rs.getString("shsmtj"));
				wf.setShsmtjnr(rs.getString("shsmtjnr"));
				wf.setSymtjyh(rs.getString("symtjyh"));
				wf.setSymtjyhnr(rs.getString("shsmtjnr"));
				wf.setMymtj(rs.getString("mymtj"));
				wf.setMymtjnr(rs.getString("mymtjnr"));
				wf.setJfsmh(rs.getString("jfsmh"));
				wf.setJfsmhnr(rs.getString("jfsmhnr"));
				wf.setWshdyj(rs.getString("wshdyj"));
				wf.setWshdyjnr(rs.getString("wshdyjnr"));
				wf.setRhtjyj(rs.getString("rhtjyj"));
				wf.setRhtjyjnr(rs.getString("rhtjyjnr"));
				wf.setSmqktk(rs.getString("smqktk"));
				wf.setSmqktknr(rs.getString("smqktknr"));
				wf.setSjzztglx(rs.getString("sjzztglx"));
				wf.setSjzztglxnr(rs.getString("sjzztglxnr"));
				wf.setMtssm(rs.getString("mtssm"));
				list.add(wf);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}

}
