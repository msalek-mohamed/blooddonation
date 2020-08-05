package services;

import java.sql.SQLException;
import java.util.ArrayList;
import dao.DaoBeneficiation;
import models.Beneficiation;

public class ServiceBeneficiation {
	public static int AjouterBeneficiation(Beneficiation d) throws ClassNotFoundException, SQLException {
		return DaoBeneficiation.AjouterBeneficiation(d);
	}
	
	public static ArrayList<Beneficiation> ConsulterBeneficiation() throws ClassNotFoundException, SQLException {
		return DaoBeneficiation.ConsulterBeneficiation();
	}
	
	
	public static ArrayList<Beneficiation> ConsulterBeneficiationNovalide() throws ClassNotFoundException, SQLException {
		return DaoBeneficiation.ConsulterBeneficiationNovalide();
	}
	
	public static int ValiderBeneficiation(int id) throws ClassNotFoundException, SQLException {
	     return DaoBeneficiation.ChangerEtatBeneficiation(id, 1);
	 }
	
	public static int AnnulerBeneficiation(int id) throws ClassNotFoundException, SQLException {
		return DaoBeneficiation.ChangerEtatBeneficiation(id, -1);
	 }
   
	public static Beneficiation ChercherBeneficiationViaId(int id) throws ClassNotFoundException, SQLException {
		return DaoBeneficiation.ChercherBeneficiationViaId(id);
	}
	
	public static int SupprimerBeneficiation(int id) throws ClassNotFoundException, SQLException {
		return DaoBeneficiation.SupprimerBeneficiation(id);
	}

	public static ArrayList<Beneficiation> ChercherBeneficiationViaIdBeneficier(int id) throws ClassNotFoundException, SQLException {
		return DaoBeneficiation.ChercherBeneficiationViaIdBeneficier(id);
	}
	
	public static ArrayList<Beneficiation> ChercherBeneficiationViaGroupSang(String GroupSanguin) throws ClassNotFoundException, SQLException {
		return DaoBeneficiation.ChercherBeneficiationViaGroupSang(GroupSanguin);
	}
	
}
