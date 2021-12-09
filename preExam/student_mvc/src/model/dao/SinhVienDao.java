package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.DbManager;
import model.bean.SinhVien;
import utils.SqlUtils;

public class SinhVienDao {

	private Connection connection;
	private ResultSet rs;
	private Statement st;
	private PreparedStatement pst;
	
	public SinhVienDao() {
		connection= DbManager.getConnection();
	}
	
	public List<SinhVien> getAll() {
		String sql = "select * from sinhvien";
		List<SinhVien> svs = new ArrayList<>();
		try {
			pst = connection.prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				svs.add(new SinhVien(rs.getString(1), rs.getString(2), rs.getBoolean(3), rs.getString(4)));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(rs, pst);
		}
		return svs;
	}
	

	public boolean AddSinhVien(SinhVien sinhVien) {
		String sql = "insert into sinhvien(msv,name,sex,makhoa) values(?,?,?,?)";
		List<SinhVien> svs = new ArrayList<>();
		try {
			pst = connection.prepareStatement(sql);
			pst.setString(1, sinhVien.getMsv());
			pst.setString(2, sinhVien.getName());
			pst.setBoolean(3, sinhVien.getSex());
			pst.setString(4, sinhVien.getMakhoa());
			return pst.executeUpdate() > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(pst);
		}
		return false;
	}


	public boolean DeleteSinhVien(String msv) {
		String sql = "delete from sinhvien where msv = ? ";
		List<SinhVien> svs = new ArrayList<>();
		try {
			pst = connection.prepareStatement(sql);
			pst.setString(1, msv);

			return pst.executeUpdate() > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(pst);
		}
		return false;
	}

	public boolean UpdateSinhVien(SinhVien sinhVien) {
		String sql = "update sinhvien set name = ? , sex =?, makhoa =? where msv = ?";
		List<SinhVien> svs = new ArrayList<>();
		try {
			pst = connection.prepareStatement(sql);
			pst.setString(1, sinhVien.getName());
			pst.setBoolean(2, sinhVien.getSex());
			pst.setString(3, sinhVien.getMakhoa());
			pst.setString(4, sinhVien.getMsv());
			return pst.executeUpdate() > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(pst);
		}
		return false;
	}

	
	public SinhVien getSvByMsv(String msv) {
		String sql = "select * from sinhvien where msv =?";

		try {
			pst = connection.prepareStatement(sql);
			pst.setString(1, msv);
			rs = pst.executeQuery();
			if (rs.next()) {
				return new SinhVien(rs.getString(1), rs.getString(2), rs.getBoolean(3), rs.getString(4));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(rs, pst);
		}
		return null;
	}
	
	public List<SinhVien> getAllfromKhoa(String makhoa) {
		String sql = "select * from sinhvien where makhoa=?";
		List<SinhVien> svs = new ArrayList<>();
		try {
			pst = connection.prepareStatement(sql);
			pst.setString(1, makhoa);
			rs = pst.executeQuery();
			while (rs.next()) {
				svs.add(new SinhVien(rs.getString(1), rs.getString(2), rs.getBoolean(3), rs.getString(4)));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlUtils.close(rs, pst);
		}
		return svs;
	}



}
