package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.TransactionBean;
import model.TransactionDao;
/**
 * Servlet implementation class Transaction
 */
@WebServlet("/Transaction")
public class Transaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Transaction() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw= response.getWriter();
		String name=request.getParameter("uname");
		String cno=request.getParameter("ucard");
		String expiry=request.getParameter("umm");
		String cvv=request.getParameter("ucvv");
		String bank=request.getParameter("bname");
		String plan=request.getParameter("radio");
		TransactionBean tb = new TransactionBean();
		tb.setName(name);
		tb.setCno(cno);
		tb.setExpiry(expiry);
		tb.setCvv(cvv);
		tb.setBank(bank);
		tb.setPlan(plan);
		TransactionDao td =new TransactionDao();
		int i=td.insert(tb);
		if (i==1)
		{
			response.sendRedirect("index_after_login.jsp");
		}
		else
		{
			pw.println("error...");
		}
		
	}

	}

