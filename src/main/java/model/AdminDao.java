package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AdminDao {
public int insert(AdminBean ab)
{
	 String name=ab.getName();
	 String email=ab.getEmail();
	 String city=ab.getCity();
	 String phno=ab.getPhno();
	 String pass = ab.getPass();
	 Connection con;
	 PreparedStatement pstm;
	 int i=1;
	 try {
		 con=ConnectionProvider.createC();
		 pstm=con.prepareStatement("insert into admin values(?,?,?,?,?)");
		 pstm.setString(1, email);
		 pstm.setString(2, name);
		 pstm.setString(3, phno);
		 pstm.setString(4, city);
		 pstm.setString(5, pass);
		 pstm.executeUpdate();
		 con.close();
	 }catch(Exception e) {
		 return 0;
	 } 
	 return i;
}
}
