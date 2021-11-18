package model.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.bean.Admin;
import utils.ConnectionProvider;
import utils.SqlUtils;

public class AdminDao {
	private Connection connection;
	private ResultSet rs;
	private Statement st;
	private PreparedStatement pst;

	public AdminDao() {
		connection = ConnectionProvider.getConnection();
	}
	
	public List<Admin> getAll(){
		List<Admin> admins = new ArrayList<Admin>();
		String query = "select * from admin";
		try {
			st = connection.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Admin admin = new Admin(rs.getString("username"), rs.getString("password"));
				admins.add(admin);
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
		return admins;
	}
	
	public boolean isExist(String username,String password){
		String query = "select * from admin where username = ? and password= ? ";
		try {
			pst = connection.prepareStatement(query);
			pst.setString(1, username);
			pst.setString(2, password);
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
	
	public boolean save(Admin admin) {
		boolean result = false;
		String sql = "insert into Admin(username,password)\n" + "values (?,?)";

		// 2. Execute the native query and return data
		try {
			// 2.1 Initial statement or prepareStatement
			pst = connection.prepareStatement(sql);
			pst.setString(1, admin.getUsername());
			pst.setString(2, admin.getPassword());
			int affectesRows = pst.executeUpdate();
			result = affectesRows > 0;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			SqlUtils.close(pst);
		}
		return result;
	}
}
