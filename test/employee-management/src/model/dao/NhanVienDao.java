package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.bean.NhanVien;
import utils.ConnectionProvider;
import utils.SqlUtils;

public class NhanVienDao {

	private Connection connection;
	private ResultSet rs;
	private Statement st;
	private PreparedStatement pst;

	public NhanVienDao() {
		connection = ConnectionProvider.getConnection();
	}

	public List<NhanVien> getAll() {
		List<NhanVien> nvs = new ArrayList<NhanVien>();
		String query = "select * from nhanvien";
		try {
			st = connection.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				NhanVien nv = new NhanVien(rs.getInt("IDNV"), rs.getString("hoten"), rs.getString("IDPB"),
						rs.getString("diachi"));
				nvs.add(nv);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(rs,st);
		}
		return nvs;
	}

	public boolean save(NhanVien nv) {
		boolean result = false;
		String sql = "insert into NhanVien(hoten ,IDPB,diachi)\n" + "values (?,?,?)";

		// 2. Execute the native query and return data
		try {
			// 2.1 Initial statement or prepareStatement
			pst = connection.prepareStatement(sql);
			pst.setString(1, nv.getHoten());
			pst.setString(2, nv.getIdpb());
			pst.setString(3, nv.getDiachi());
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

	public boolean deleteById(int id) {
		String query = "delete from nhanvien where id =?";
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

	public List<NhanVien> search(String key, String value) {
		List<NhanVien> nvs = new ArrayList<NhanVien>();
		String query = "select * from nhanvien where " + key + " =?";
		try {
			pst = connection.prepareStatement(query);
			pst.setString(1, value);
			if (key.equals("IDNV")) {
				pst.setInt(1, Integer.parseInt(value));
			}
			rs = pst.executeQuery();
			while (rs.next()) {
				nvs.add(new NhanVien(rs.getInt("IDNV"), rs.getString("hoten"), rs.getString("IDPB"),
						rs.getString("diachi")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(rs, pst);
		}
		return nvs;
	}

}
