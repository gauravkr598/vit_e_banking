package method.banking;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VitWebData
 */
@WebServlet("/VitWebData")
public class VitWebData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VitWebData() {
        super();
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
		doGet(request, response);
		PrintWriter out=response.getWriter();
		
		//get value
		String contact_name=request.getParameter("contact_name");
		String contact_email=request.getParameter("contact_email");
		String contact_message=request.getParameter("contact_message");
		String responseText = null  ;
		 
		
		//print value
		System.out.println("contact_name : "+contact_name);
		System.out.println("contact_email : "+contact_email);
		System.out.println("contact_message : "+contact_message);
		// connection create
		//load driver 
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(Exception e) {
			e.printStackTrace();
		}
		//create connection
		String url="jdbc:mysql://localhost:3306/vit_bank";
		String username="root";
		String userpassword="admin";
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vit_bank","root","admin");
			//query
			String q="insert into student_details(contact_name,contact_email,contact_message) values(?,?,?)";
			// create statement 
			PreparedStatement pstmt=con.prepareStatement(q);

			pstmt.setString(1,contact_name);
			pstmt.setString(2,contact_email);
			pstmt.setString(3,contact_message);
			
			 int upd=pstmt.executeUpdate();
			//System.out.println("done......");
			if(upd == 1) {
				responseText = "#@#success#@#Your details are successfully saved.#@#";
			} else 
				responseText = "#@#failure#@#Your details are not successfully saved.#@#ss";
         
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			responseText = "#@#failure#@#Some Exception generated : "+e.toString()+"#@#";
		}
		out.println(responseText);
		
	}

}
