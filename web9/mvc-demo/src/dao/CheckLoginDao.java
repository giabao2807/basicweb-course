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

public class CheckLoginDao {
	private Connection connection;
	private ResultSet rs;
	private Statement st;
	private PreparedStatement pst;

	public CheckLoginDao() {
		connection = ConnectionProvider.getConnection();
	}

	public boolean isExistAcount(String user, String pass) {
		String query = "select * from admin where username = ? and password= ? ";
		try {
			pst = connection.prepareStatement(query);
			pst.setString(1, user);
			pst.setString(2, pass);
			rs = pst.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

}
