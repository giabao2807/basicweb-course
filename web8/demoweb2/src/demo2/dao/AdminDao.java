package demo2.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import demo2.connection.ConnectionProvider;
import demo2.model.Admin;

public class AdminDao {
	private Connection connection;
	private ResultSet rs;
	private Statement st;

	public AdminDao() {
		connection = ConnectionProvider.getConnection();
	}
	public List<Admin> getAllAdmin(){
		List<Admin> listad = new ArrayList<>();
		String query = "Select * from admin";
		try {
			st = connection.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Admin admin = new Admin(rs.getString("username"), rs.getString("password"));
				listad.add(admin);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				st.close();
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return listad;
		
	}
	
}
