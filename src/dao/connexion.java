package dao;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

public class connexion {

	  private static Connection con ;
	  private static Statement stm;
	  
	  public static void connect() throws SQLException, ClassNotFoundException {
		  
		  Class.forName("com.mysql.jdbc.Driver");
		  String url="jdbc:mysql://localhost/appblooddonation";
		  con =  (Connection) DriverManager.getConnection(url,"root","");
		  stm = (Statement) con.createStatement();
		  
	  }
	  
	  public static void disconnect() throws SQLException{
		  
		  con.close();
		  
	  }
	  
	  public static int Maj(String sql) throws SQLException {
		   int res=0;
		   res = stm.executeUpdate(sql);
		   return res;
	  }
	  
	  
	  public static ResultSet Select(String sql) throws SQLException {
		  ResultSet res;
		  res = (ResultSet) stm.executeQuery(sql);
			return res;
	  }
	  
	
}
