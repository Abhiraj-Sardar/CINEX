package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
public boolean checkC(UserBean ub)
{
	 String email=ub.getEmail();
	 String pass = ub.getPassword();
	 Connection con;
	 PreparedStatement pstm;
	 ResultSet rs;
	 try {
		 con=ConnectionProvider.createC();
		 pstm=con.prepareStatement("select * from admin where email=? and password=?");
		 pstm.setString(1, email);
		 pstm.setString(2, pass);
		 rs=pstm.executeQuery();
		 if (rs.next()) {
			 return true;
		 }
	 }catch(Exception e) {
		 
	 } 
	 return false;
}
}
