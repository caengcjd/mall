package dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class DbUtil {
	Connection con = null;
	Statement stat = null;
	ResultSet rs = null;
	PreparedStatement pstate = null;

	/**
	 * 返回连接对象
	 * 
	 * @return
	 */
	public Connection getConnection() {
		String driver = "com.mysql.jdbc.Driver";


		String url = "jdbc:mysql://127.0.0.1:3306/item";
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, "root", "root");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	//	System.out.printf("haha  hahahahah");
		return con;
	}

	/**
	 * 增删改
	 * 
	 * @param sql
	 * @param list
	 * @return
	 */
	public int executeUpdate(String sql, List list) {
		int a = 0;
		con = getConnection();
		try {
			pstate = con.prepareStatement(sql);
			for (int i = 0; list != null && i < list.size(); i++) {
				System.out.println("tips1  here\n");
				pstate.setObject(i+1 , list.get(i));
			}
			a = pstate.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return a;
	}

	/**
	 * 查
	 * 
	 * @param sql
	 * @param list
	 * @return
	 */
	public ResultSet executeQuery(String sql, List list) {
		con = getConnection();
		try {
			pstate = con.prepareStatement(sql); // 语句
			for (int i = 0; list != null && i < list.size(); i++) {
				pstate.setObject(i + 1, list.get(i));
			}
		
			rs = pstate.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	/**
	 * 关闭对象
	 * 
	 * @param con
	 * @param stat
	 * @param rs
	 */
	public void closeAll() {
		try {
			if (rs != null) {
				rs.close();
			}

			if (pstate != null) {
				pstate.close();
			}

			if (con != null) {
				con.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
