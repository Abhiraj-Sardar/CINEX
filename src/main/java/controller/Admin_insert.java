package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AdminBean;
import model.AdminDao;

/**
 * Servlet implementation class Admin_insert
 */
@WebServlet("/Admin_insert")
public class Admin_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw= response.getWriter();
//		pw.println("hello");
		String name=request.getParameter("aname");
		String email=request.getParameter("aemail");
		String city=request.getParameter("acity");
		String phno=request.getParameter("aphno");
		String pass=request.getParameter("apass");
		AdminBean ab = new AdminBean();
		ab.setName(name);
		ab.setEmail(email);
		ab.setCity(city);
		ab.setPhno(phno);
		ab.setPass(pass);
		AdminDao ad = new AdminDao();
		int state=ad.insert(ab);
		if (state==1)
		{
			response.sendRedirect("admindashboard.jsp");
		}
		else {
			pw.println("<h2>Error...."+"</h2>");
		}
	}

}
