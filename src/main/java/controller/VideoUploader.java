package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import model.VideoBean;
import model.VideoDao;

/**
 * Servlet implementation class VideoUploader
 */
@WebServlet("/VideoUploader")
public class VideoUploader extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public VideoUploader() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw =response.getWriter();
		String mid=request.getParameter("mid");
		String mname = request.getParameter("mname");
		String mtype = request.getParameter("mtype");
		String mdir = request.getParameter("mdir");
		String mhero = request.getParameter("mhero");
		String mlang = request.getParameter("mlang");
		String fname = request.getParameter("mimg");
		String upload = request.getParameter("mupload");
		String mdate = request.getParameter("mdate");
		String path="movie/"+upload;
//		MultipartRequest m = new MultipartRequest(request, "C:\\Users\\ABHIRAJ SARDAR\\Desktop\\Admin\\OTT_Admin\\src\\main\\webapp\\movie"); //path where my videos will be stored 
		VideoBean vb = new VideoBean();
		vb.setMid(mid);
		vb.setMname(mname);
		vb.setMtype(mtype);
		vb.setMdir(mdir);
		vb.setMhero(mhero);
		vb.setMlang(mlang);
		vb.setMimg(fname);
		vb.setMupload(path);
		vb.setMdate(mdate);
		VideoDao vd =new VideoDao();
		int i=vd.insert(vb);
		if (i==1)
		{
			response.sendRedirect("admindashboard.jsp");
		}
		else
		{
			pw.println("error...");
		}
	}
}
