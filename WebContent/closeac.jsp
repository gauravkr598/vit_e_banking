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

<body>

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



<table style="width:897px; background:#9FE2BF; margin:0 auto;">
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
<table><%
        String num=request.getParameter("accountno");
		int accountno=Integer.parseInt(num);
        String username=request.getParameter("username");
		String password=request.getParameter("password");
	    boolean status=verifyLogin1.checkLogin(accountno,username,password);
		//if(status==true){
		//	out.print("Welcome    " + username);
		try {
		if(status==true){
			out.print("Welcome User :  " + username);
			Connection con=GetCon.getCon();
			PreparedStatement ps=con.prepareStatement("delete from NEWACCOUNT  where accountno='"+accountno+"'");
            //ps.setInt(1,accountno);
			ps.executeUpdate();
			
			out.print("<h2 style=\"color:#21618C ;\">&nbsp;&nbsp;&nbsp;your account no '"+accountno+"' has closed.</h2>");

			out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href='create.html'><IMG SRC='data:image/png;base64,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'></IMG></A>");
				
			
		}
		else{
			out.print("<h2 style=\"color:#21618C;\"> Please check your username and Password </h2>");
			request.setAttribute("balance","Please check your username and Password");
			%>
			<jsp:forward page="closeac1.jsp"></jsp:forward> 
			<% 
			}
		 }catch (SQLException e) {
			e.printStackTrace();
		}
		
    	
			%></table><%
%>
    	
    	
		 </table>


<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="method.banking.*" %>


   
