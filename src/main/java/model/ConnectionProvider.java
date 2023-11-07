package model;
import java.sql.Connection;
import java.sql.DriverManager;
public class ConnectionProvider {
	 static Connection con;
	 public static Connection createC() {
		 try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 String url="jdbc:mysql://localhost:3306/ott";
			 String user="root";
			 String pass="admin";
			 con=DriverManager.getConnection(url,user,pass);
		 }catch(Exception e)
		 {
			 System.out.println("There is an error");
		 }
		 return con;
	 }
}
