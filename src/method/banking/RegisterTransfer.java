package method.banking;
import java.math.BigInteger;
import java.sql.*;

import method.banking.GetCon;
public class RegisterTransfer {
int status=0;
 
public int register(int accountno,String user_name, String password,double amount){
	//public static int register(String email,String password,String gender,String country,String name){

	Connection con=GetCon.getCon();
	PreparedStatement ps;
	try {
		ps = con.prepareStatement("Insert into account_details (accountno,user_name,password,deposit_amount) values(?,?,?,?)");
		 
		
		ps.setInt(1,accountno);
		ps.setString(2,user_name);
		 
		ps.setString(3,password);
		 
		ps.setDouble(4, amount);
		 
		
		status=ps.executeUpdate();
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return status;
}
}
