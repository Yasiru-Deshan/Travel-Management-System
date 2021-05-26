package Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class AdminDBUtil {
	
	public static boolean insertpackage(String name,String desti,String mode,String tname,String meal,String price) {
		
		boolean isSuccess = false;
		
		//create db connection
		String url = "jdbc:mysql://localhost:3306/package";
		String user= "root";
		String pass= "436425";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql ="insert into packagedetails values (0,'"+name+"','"+desti+"','"+mode+"','"+tname+"','"+meal+"','"+price+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		
		
		
		return isSuccess;
	}

}
