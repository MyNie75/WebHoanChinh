package com.ivs.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ketNoiDB {
	/* kết nối với CSDL */
	private static String chuoiKn = "jdbc:mysql://localhost:3306/tin_tuc";
	private static String user = "root";
	private static String pass = "";

	
	@SuppressWarnings("unused")
	private static Connection kncsdl() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			DriverManager.getConnection(chuoiKn, user, pass);
			// thông báo lên hàm main kết nối thàng công.
			System.out.println("kết nối thành công.");
			connection = DriverManager.getConnection(chuoiKn, user, pass);
		} catch (ClassNotFoundException e) {
			System.out.println("Class not found!");
		} catch (SQLException e) {
			System.out.println("lỗi ket noi!");
		}
		return connection;

	}
	/* End kết nối với CSDL */
	/* Hàm lấy data từ SQL */
		public static List<Admin> getByAlladmin() throws SQLException
		{
			List<Admin> listad = new ArrayList<Admin>();
			Connection cn = kncsdl();
			String sql = "Select * from tb_user";
			Statement stm =cn.createStatement();
			ResultSet rs = stm.executeQuery(sql);
			while(rs.next()) 
			{
				int id = rs.getInt("id");
				String user = rs.getString("userName");
	    		String pass = rs.getString("password");
	    		String tenUser= rs.getNString("tenThat_user");
	    		boolean quyen = rs.getBoolean("quyen");	
	    		Admin ad = new Admin(id,user,pass,tenUser, quyen);
	    		listad.add(ad);	    		    	
			}
			rs.close();
			stm.close();
			cn.close();
			
			return listad;
		}
	
	/* End Hàm lấy data từ SQL */
	@SuppressWarnings("static-access")
	public static void main(String[] args) {
		kncsdl();
		ketNoiDB kn = new ketNoiDB();
		try {
			kn.getByAlladmin();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
