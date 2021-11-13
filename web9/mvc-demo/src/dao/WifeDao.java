package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Wife;
import connection.ConnectionProvider;

public class WifeDao {
	private Connection connection;
	private ResultSet rs;
	private Statement st;
	private PreparedStatement pst;

	public WifeDao() {
		connection = ConnectionProvider.getConnection();
	}

	public List<Wife> getWifeList() {
		List<Wife> wifes = new ArrayList<Wife>();
		String query = "select * from wife";
		try {
			st = connection.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Wife wife = new Wife(rs.getString("name"), rs.getString("address"), rs.getBoolean("alive"));
				wifes.add(wife);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return wifes;
	}

	public boolean addWife(String name, String address, boolean alive) {
		String query = "insert into wife (name,address,alive) values ('" + name + "','" + address + "'," + alive + ");";
		System.out.println(" " + alive + "");
		try {
			pst = connection.prepareStatement(query);
			System.out.println(pst);
			if (pst.executeUpdate() > 0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

}
