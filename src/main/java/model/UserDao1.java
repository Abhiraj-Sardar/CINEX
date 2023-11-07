package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao1 {
	public int insert(UserBean1 ub1)
	{
		 String name=ub1.getName();
		 String email=ub1.getEmail();
		 String phone=ub1.getPhone();
		 String city = ub1.getCity();
		 String gender = ub1.getGender();
		 String pass = ub1.getPass();
		 Connection con;
		 PreparedStatement pstm;
		 int i=0;
		 try {
			 con=ConnectionProvider.createC();
			 pstm=con.prepareStatement("insert into user values(?,?,?,?,?,?)");
			 pstm.setString(1, name);
			 pstm.setString(2, email);
			 pstm.setString(3, phone);
			 pstm.setString(4, city);
			 pstm.setString(5, gender);
			 pstm.setString(6, pass);
			 i=pstm.executeUpdate();
			 con.close();
		 }catch(Exception e) {
			 return 0;
		 } 
		 return i;
	}
	
	public boolean checkC(UserBean1 ub1)
	{
		 String email=ub1.getEmail();
		 String pass = ub1.getPass();
		 Connection con;
		 PreparedStatement pstm;
		 ResultSet rs;
		 try {
			 con=ConnectionProvider.createC();
			 pstm=con.prepareStatement("select * from user where email=? and password=?");
			 pstm.setString(1, email);
			 pstm.setString(2, pass);
			 rs=pstm.executeQuery();
			 if (rs.next()) {
				 return true;
			 }
		 }catch(Exception e) {
			 System.out.println("error");
		 } 
		 return false;
	}
}
