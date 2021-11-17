package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.bean.PhongBan;
import utils.ConnectionProvider;
import utils.SqlUtils;


public class PhongBanDao {
	private Connection connection;
	private ResultSet rs;
	private Statement st;
	private PreparedStatement pst;

	public PhongBanDao() {
		connection = ConnectionProvider.getConnection();
	}

	public List<PhongBan> getAll() {
		List<PhongBan> pbs = new ArrayList<PhongBan>();
		String query = "select * from phongban";
		try {
			st = connection.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				PhongBan pb = new PhongBan(rs.getString("IDPB"), rs.getString("tenpb"), rs.getString("mote"));
				pbs.add(pb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(rs,st);
		}
		return pbs;
	}
	public boolean update(PhongBan pb) {
		boolean result=false;
		String sql = "update phongban \n"
					+" set tenpb= ? , mota=? \n"
					+" where IDPB=?";

		try {
			pst = connection.prepareStatement(sql);
			pst.setString(1, pb.getTenpb());
			pst.setString(2, pb.getMota());
			pst.setString(3, pb.getIdpb());
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
}
