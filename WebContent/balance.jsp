<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

</head>

<body style="background-color:#808080">

<div id="top_links">
  

<div  style="background-image: url('http://vita.vision.org.in/wp-content/uploads/2020/04/Capture4.png');" id="header">
	<center></center><h1>VIT BANK <span class="style1"></span></h1>
    <h2>ExtraOrdinary Service</h2>	

</div>

<div id="navigation">
    <ul>
    <li><a href="create.html">NEW ACCOUNT</a></li>
    <li><a href="balance1.jsp">BALANCE</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <li><a href="withdraw1.jsp">WITHDRAW</a></li>
    <li><a href="transfer1.jsp">TRANSFER</a></li>
    <li><a href="closeac1.jsp">CLOSE A/C</a></li>
    <li><a href="about.jsp">Contact Us</a></li>
    </ul>
</div>



<table style="width:897px; background:#C0C0C0; margin:0 auto;">
<tr >
	<td width="300" valign="top" style="border-right:#666666 ;">
    	<div id="services"><h1>Services</h1><br>
		    <ul>
        	<li><a href="https://www.mutualfundindia.com/">MUTUAL FUNDS </a></li>
            <li><a href="https://timesofindia.indiatimes.com/entertainment/theatre/aligarh/starworld-cinemas-great-value-mall-sukhravali/2888">CINEMA TICKET BOOK</a></li>
            <li><a href="https://www.flipkart.com/">SHOPING MALL</a></li>
            </ul>
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	
    	<% 
%>
<table ><%
        String num=request.getParameter("accountno");
		int accountno=Integer.parseInt(num);
        String username=request.getParameter("username");
		String password=request.getParameter("password");
		String num1=request.getParameter("amount");
		
		
	    boolean status=verifyLogin1.checkLogin(accountno,username,password);
		//if(status==true){
		//	out.print("Welcome    " + username);
		 
		try {
		if(status==true){
			out.print("Welcome User   " + username);
		
			Connection con=GetCon.getCon();
			PreparedStatement ps=con.prepareStatement("Select * from newaccount  where accountno=?");
            ps.setInt(1,accountno);
            
            
            
			ResultSet rs=ps.executeQuery();
			 
			out.print("<table align='left' cellspacing='5' cellpadding='5'>");
			out.print("<tr><th>ACCOUNT NO</th><th>USERNAME</th><th>PASSWORD</th><th>AMOUNT</th> <th>PHONE</th></tr>");
			while(rs.next()){
				System.out.print(accountno);
				out.print("<tr>");
				out.print("<td>" + rs.getInt(1) + "</td>");
				out.print("<td>" + rs.getString(3) + "</td>");
				out.print("<td>" + rs.getString(5) + "</td>");
				out.print("<td>" + rs.getInt(7) + "</td>");
				
				out.print("<td>" + rs.getString(9) + "</td>");
				 
				 
				out.print("</tr>");
			
			}
			out.print("</table>");
			
			
			
		}
		else{
			out.print("Please check your username and Password");
			request.setAttribute("balance","Please check your username and Password");
			%>
			<jsp:forward page="NewFile.jsp"></jsp:forward> 
			<% 
			}
		 }catch (SQLException e) {
			e.printStackTrace();
		}
		
		//}
		
			//}
			%></table><%
%>
    	
    	
		</table>


<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="method.banking.*" %>
  
