


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
function validate(){
if($("#accountno").val() == ""){
	alert('Please Enter Account Number.');
	$("#accountno").focus();
	return false;
    }
	 else if($("#username").val() == ""){
			alert('Please Enter User Name.');
			$("#username").focus();
			return false;
   }
	 else if($("#password").val() == ""){
			alert('Please Enter Password.');
			$("#password").focus();
			return false;
 }
    if(confirm("Are you sure...")) {
		$("#buttonSumbitId").html("<span style='color:White'>Please wait..</span> <img src='4dc11d17f5292fd463a60aa2bbb41f6a_w200.webp' width=\"25\" />");
		 
	 }

   return true   
}
</SCRIPT>
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
<style>
#ttimage
{
 border-radius: 10%;
}
</style>

<body style="background-color:#9FE2BF">

<div id="top_links">
  

<div  style="background-image: url('http://vita.vision.org.in/wp-content/uploads/2020/04/Circle-1.jpeg');" id="header">
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
    <li><a href="about.jsp">ABOUT US</a></li>
    </ul>
</div>



<table style="width:897px; background:#CCCCFF; margin:0 auto;">
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
    	<div id="welcome" style="border-right:#666666  ;"><h1>BALANCE FORM</h1><br>
    	    <table  align="center" bgcolor="#6495ED">
		<tr>
		
		</tr>
		<tr>
			<td><div><%if(request.getAttribute("balance")!=null)
			{
			out.print(request.getAttribute("balance"));
			}
			
			 %></div>
				<form name="F1" onSubmit="return validate()" action="balance.jsp" >
				   <table cellspacing="5" cellpadding="3"  >	
				  <tr><td>ACCOUNT NO:</td><td> <input type="text" id="accountno" name="accountno"/></td></tr>
					<tr><td>USER NAME:</td><td> <input type="text" id="username" name="username"/></td></tr>
					<tr><td>PASSWORD:</td><td> <input type="password" id="password" name="password"/></td></tr>
					
					<tr><td></td><td id="buttonSumbitId"><input type="submit" value="Submit"/>
					
                   
                   <INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
             	</table>
				</form>
			</td>
		</tr>
	</table>
    	   </div>      
    </td>
    
    <td width="299" valign="top">
    	<div id="welcome" style="border-right:#666666  ;"><h1>Welcome</h1><br>
    	    <center><img  id="ttimage" src="https://cdn.pixabay.com/photo/2016/03/09/09/22/workplace-1245776__340.jpg" alt="business" width="196" height="106"></center><br>
		    <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of webdesign   starting from business template, fashion template, media template, Science template, Arts template and much more.</p>
	    	
	    </div>      
    </td>
            	
    
</tr></table>
    
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
  <div id="footer_copyright" >
 
    	    <center><img src="https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822__340.jpg" id="ttimage" alt="business"  width="196" height="106"></center><br>
		    <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of webdesign   starting from business template, fashion template, media template, Science template, Arts template and much more.</p>
	  
  Copyright © Your Company Name</div>
</div>

<script type="text/javascript">
document.onload = ctck();
</script>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</body>
</html>
