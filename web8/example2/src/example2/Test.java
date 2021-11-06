package example2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class Test {
	public static void main(String[] args) {
		System.out.println("Ket noi CSDL");
		try {
			//Ket noi truc tiep voi Mysql
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dulieu", "root" , "12341234");
			Statement stmt = conn.createStatement();
			String query = "Select * from admin";
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next())
			{
				System.out.println(rs.getString("username") + " " +   rs.getString("password"));
				
				
			}
			rs.close();
			stmt.close();
		}
		catch( Exception e )
		{
			System.out.println ("Error" + e);
		}
	}
	
}
