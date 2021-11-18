package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.bean.People;
import utils.ConnectionProvider;
import utils.SqlUtils;

public class PeopleDao {
	private Connection connection;
	private ResultSet rs;
	private Statement st;
	private PreparedStatement pst;

	public PeopleDao() {
		connection = ConnectionProvider.getConnection();
	}
	

	public List<People> getAll() {
		List<People> pps = new ArrayList<>();
		String query = "select * from people";
		try {
			st = connection.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				People pp = new People(rs.getInt("id"), rs.getString("lastname"), rs.getString("firstname"),rs.getString("roles"));
				pps.add(pp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(rs,st);
		}
		return pps;
	}
	
	
	public People getById(String id) {
		String query = "select * from people where id =?";
		try {
			pst = connection.prepareStatement(query);
			pst.setString(1, id);
			rs=pst.executeQuery();
			if (rs.next()) {
				return new People(rs.getInt("id"), rs.getString("lastname"), rs.getString("firstname"),rs.getString("roles"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(rs,pst);
		}
		return null;
	}
	
	public boolean update(People pp) {
		boolean result=false;
		String sql = "update people \n"
					+" set lastname= ? , roles=? \n"
					+" where id=?";

		try {
			pst = connection.prepareStatement(sql);
			pst.setString(1, pp.getLastname());
			pst.setString(2, pp.getRoles());
			pst.setInt(3, pp.getId());
			int affectesRows= pst.executeUpdate();
			result= affectesRows>0;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			SqlUtils.close(pst);
		}
		return result;
	}
	
	public boolean deleteById(int id) {
		String query = "delete from people where id=?";
		try {
			pst = connection.prepareStatement(query);
			pst.setInt(1, id);
			if (pst.executeUpdate() > 0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(pst);
		}
		return false;
	}
	
	public List<People> search(String key, String value) {
		List<People> pps = new ArrayList<People>();
		String query = "select * from people where " + key + " =?";
		try {
			pst = connection.prepareStatement(query);
			pst.setString(1, value);
			rs = pst.executeQuery();
			while (rs.next()) {
				pps.add(new People(rs.getInt("id"), rs.getString("lastname"), rs.getString("firstname"),rs.getString("roles")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(rs, pst);
		}
		return pps;
	}
	
	
}


