package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import model.UserBean1;
import model.UserDao1;

/**
 * Servlet implementation class User_valid
 */
@WebServlet("/User_valid")
public class User_valid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public User_valid() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String name = request.getParameter("uname");
		String email = request.getParameter("uemail");
		String pass = request.getParameter("upass");
		HttpSession session = request.getSession();
		UserBean1 ub1 = new UserBean1();
		ub1.setName(name);
		ub1.setEmail(email);
		ub1.setPass(pass);
		UserDao1 ud1 = new UserDao1();
		boolean status = ud1.checkC(ub1);
		if(status)
		{
			session.setAttribute("Name", name);
			response.sendRedirect("index_after_login.jsp?msg=valid");
		}
		else
		{
			pw.println("<h2>Error...."+"</h2>");
			//response.sendRedirect("index.jsp?msg=invalid");
		}
	}

}
