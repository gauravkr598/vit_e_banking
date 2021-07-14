package method.banking;
import java.math.BigInteger;
import java.sql.*;

import method.banking.GetCon;
public class RegisterUser {
int status=0;
 
public int register(String condidate_name,String username,String email,String password,String repassword,double amount,String address,Long phone){
	//public static int register(String email,String password,String gender,String country,String name){

	Connection con=GetCon.getCon();
	PreparedStatement ps;
	try {
		ps = con.prepareStatement("Insert into NEWACCOUNT (condidate_name,username,email,password,repassword,AMOUNT, ADDRESS,PHONE) values(?,?,?,?,?,?,?,?)");
		 
		
		ps.setString(1,condidate_name);
		ps.setString(2,username);
		ps.setString(3,email);
		ps.setString(4,password);
		ps.setString(5,repassword);
		ps.setDouble(6, amount);
		ps.setString(7,address);
		ps.setLong(8, phone);
		
		status=ps.executeUpdate();
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return status;
}
}
