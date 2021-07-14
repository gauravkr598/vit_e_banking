package method.banking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class verifyLogin1 {

public static boolean checkLogin(double accountno,String username,String password){
	boolean status=false;
	Connection con=GetCon.getCon();
	try {
		//PreparedStatement ps=con.prepareStatement("Select * from MAILCASTINGUSER where EMAILADD = ? and PASSWORD =?");
		PreparedStatement ps=con.prepareStatement("Select * from NEWACCOUNT where accountno=? and username = ? and password =?");
		ps.setDouble(1,accountno);
		ps.setString(2,username);
		ps.setString(3,password);
		
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return status;
}
}
