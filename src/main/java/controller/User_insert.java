package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserBean1;
import model.UserDao1;

/**
 * Servlet implementation class User_insert
 */
@WebServlet("/User_insert")
public class User_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public User_insert() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw= response.getWriter();
		String name=request.getParameter("uname");
		String email=request.getParameter("uemail");
		String phone=request.getParameter("uphno");
		String city=request.getParameter("ucity");
		String gender=request.getParameter("ugender");
		String pass=request.getParameter("upass");
		UserBean1 ub1 = new UserBean1();
		ub1.setName(name);
		ub1.setEmail(email);
		ub1.setPhone(phone);
		ub1.setCity(city);
		ub1.setGender(gender);
		ub1.setPass(pass);
		UserDao1 ud1 =new UserDao1();
		int i=ud1.insert(ub1);
		if (i==1)
		{
			response.sendRedirect("index.jsp");
		}
		else
		{
			pw.println("error...");
		}
		
	}

}
