package tests;

import java.sql.SQLException;
import java.util.ArrayList;

import models.Beneficiation;
import services.ServiceBeneficiation;



public class TestDao {


	public static void main(String[] args) throws ClassNotFoundException, SQLException {		
		//System.out.println(DaoProfil.ConsulterProfil(3));
		 //java.util.Date myDate = new java.util.Date("11/06/1999");
		 //java.sql.Date date = new java.sql.Date(myDate.getTime());
		ArrayList<Beneficiation> DN = ServiceBeneficiation.ChercherBeneficiationViaGroupSang("A+");
		System.out.println(DN);
	}

}
