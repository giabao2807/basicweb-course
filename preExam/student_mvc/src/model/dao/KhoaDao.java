package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.DbManager;
import model.bean.Khoa;
import utils.SqlUtils;

public class KhoaDao {
	private Connection connection;
	private ResultSet rs;
	private Statement st;
	private PreparedStatement pst;
	
	public KhoaDao() {
		 connection= DbManager.getConnection();
	}
	
	public List<Khoa> getAll() {
		String sql = "select * from khoa";
		List<Khoa> khoas = new ArrayList<>();
		try {
			pst = connection.prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				khoas.add(new Khoa(rs.getString(1), rs.getString(2)));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(rs, pst);
		}
		return khoas;
	}
	
}

