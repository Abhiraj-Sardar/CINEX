package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserBean;
import model.UserDao;

/**
 * Servlet implementation class Admin_valid
 */
@WebServlet("/Admin_valid")
public class Admin_valid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String name = request.getParameter("uname");
		String email = request.getParameter("uemail");
		String pass = request.getParameter("upass");
		HttpSession session = request.getSession();
		UserBean ub = new UserBean();
		ub.setName(name);
		ub.setEmail(email);
		ub.setPassword(pass);
		UserDao ud = new UserDao();
		boolean status = ud.checkC(ub);
		if(status)
		{
			session.setAttribute("Name", name);
			session.setAttribute("Email", email);
			response.sendRedirect("admindashboard.jsp");
		}
		else
		{
			pw.println("<h2>Error...."+"</h2>");
		}
	}

}
