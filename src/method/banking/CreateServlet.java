package method.banking;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class Register
 */
@WebServlet("/CreateServlet")
public class CreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CreateServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String condidate_name=request.getParameter("condidate_name");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String  repassword=request.getParameter("repassword");
		
		String amoun=request.getParameter("amount");
		double amount=Double.parseDouble(amoun);
		
		String address=request.getParameter("address");
		
		String ph=request.getParameter("phone");
		Long phone=Long.parseLong(ph);
		String responseText = null  ;
		
		//double mname=Double.parseDouble(num);
		//String country=request.getParameter("country");
	
		
		RegisterUser reg = new RegisterUser();
		int status=reg.register(condidate_name,username, email,password, repassword, amount, address,phone);
	    
	    
	    
	   
	    
		if(status>0){
			out.print("<center><h1 style=\"color:green ;\">WELCOME! YOUR ACCOUNT HAS OPENED</center></h1>");
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		}
		else{
			out.print("<center><h3 style=\"color:red ;\">Sorry,Registration failed. please try later</h3></center>");
			RequestDispatcher rd=request.getRequestDispatcher("ErrorPage.jsp");
			rd.include(request, response);
			
		}
		
	out.close();	
	}
}