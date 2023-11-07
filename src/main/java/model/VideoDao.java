package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class VideoDao {
	public int insert(VideoBean vb)
	{
		 String id=vb.getMid();
		 String name=vb.getMname();
		 String type=vb.getMtype();
		 String dir=vb.getMdir();
		 String hero=vb.getMhero();
		 String lang=vb.getMlang();
		 String image=vb.getMimg();
		 String video=vb.getMupload();
		 String date=vb.getMdate();
		 Connection con;
		 PreparedStatement pstm;
		 int i=0;
		 try {
			 con=ConnectionProvider.createC();
			 pstm=con.prepareStatement("insert into movie(mv_id,movie_name,movie_type,director,starcast,language,movie_banner,release_date,film)values(?,?,?,?,?,?,?,?,?)");
			 pstm.setString(1, id);
			 pstm.setString(2, name);
			 pstm.setString(3, type);
			 pstm.setString(4, dir);
			 pstm.setString(5, hero);
			 pstm.setString(6, lang);
			 pstm.setString(7, image);
			 pstm.setString(8, date);
			 pstm.setString(9, video);
			 i=pstm.executeUpdate();
			 con.close();
		 }catch(Exception e) {
			 System.out.println(e.getMessage());
		 } 
		 return i;
	}
}
