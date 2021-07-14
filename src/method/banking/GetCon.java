package method.banking;

import java.sql.*;
public class GetCon {
private GetCon(){}

public static Connection con = null;
 static String responseTex=null;
static{
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vit_bank","root","admin");
		System.out.println("Connection stablished");
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
		responseTex= e.toString();
		System.out.println("Exception in GetCon");
	}
	
}
public static Connection getCon(){
	return con;
}



public static int getPrimaryKey(){
	int nextvalue=0;
	Connection con=GetCon.getCon();
	PreparedStatement ps2;
	try {
	
	ps2=con.prepareStatement("select NEWACCOUNT.nextval from dual");
	
	ResultSet rs=ps2.executeQuery();
	rs.next();
	nextvalue=rs.getInt(1);

	
	
} catch (SQLException e) {
		
		e.printStackTrace();
	}
return nextvalue;

}
}

