package tests;

import java.sql.Date;
import java.sql.SQLException;


public class testPersonne {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		  String   date = "2003-04-29";
		  String[] CompDate = date.split("-");
          Date DN = new Date((Integer.parseInt(CompDate[0])-1900), (Integer.parseInt(CompDate[1])-1),Integer.parseInt(CompDate[2]));
          System.out.println(DN);
	

}
		 
		 
}
