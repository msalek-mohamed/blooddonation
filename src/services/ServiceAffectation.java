package services;

import java.sql.SQLException;
import java.util.ArrayList;
import dao.DaoAffectation;
import dao.DaoBeneficiation;
import dao.DaoDonation;
import models.Affectation;

public class ServiceAffectation {
	public static int AjouterAffectation(Affectation a) throws ClassNotFoundException, SQLException {
		int resD = DaoDonation.ChangerEtatDonation(a.getDonnation().getId_donation(), 2);
		if(resD == 1){
			int resB = DaoBeneficiation.ChangerEtatBeneficiation(a.getBeneficiation().getId_beneficiation(), 2);
			if(resB == 1) {
				return DaoAffectation.AjouterAffectation(a);
			}
			else {
				return resB;
			}
		}
		else {
			return resD;
		}
		
	}
	
	public static ArrayList<Affectation> ConsulterAffectation() throws ClassNotFoundException, SQLException {
		return DaoAffectation.ConsulterAffectation();
	}
	
	
	public static Affectation ChercherAffectationViaId(int id) throws ClassNotFoundException, SQLException {
		return DaoAffectation.ChercherAffectationViaId(id);
	}
	

	public static int SupprimerAffectation(int id) throws ClassNotFoundException, SQLException {
		return DaoAffectation.SupprimerAffectation(id); 
	}

	

}
