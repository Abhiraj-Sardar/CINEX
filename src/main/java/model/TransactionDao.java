package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class TransactionDao {
	public int insert(TransactionBean tb)
	{
		 String name=tb.getName();
		 String cno=tb.getCno();
		 String expiry=tb.getExpiry();
		 String cvv= tb.getCvv();
		 String bank = tb.getBank();
		 String plan = tb.getPlan();
		 Connection con;
		 PreparedStatement pstm;
		 int i=0;
		 try {
			 con=ConnectionProvider.createC();
			 pstm=con.prepareStatement("insert into transaction values(?,?,?,?,?,?)");
			 pstm.setString(1, name);
			 pstm.setString(2, cno);
			 pstm.setString(3, expiry);
			 pstm.setString(4, cvv);
			 pstm.setString(5, bank);
			 pstm.setString(6, plan);
			 i=pstm.executeUpdate();
			 con.close();
		 }catch(Exception e) {
			 return 0;
		 } 
		 return i;
	}
}
