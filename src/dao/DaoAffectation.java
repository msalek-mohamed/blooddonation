package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.ResultSet;

import models.Affectation;

public class DaoAffectation {
   
	public static int AjouterAffectation(Affectation a) throws ClassNotFoundException, SQLException {
		int res = 0;
		connexion.connect();

		res = connexion.Maj("INSERT `affectation`(`id_donation`, `id_beneficiation`, `id_expert`, `date_affectation`)"
				+ "VALUES("+a.getDonnation().getId_donation()+", "+a.getBeneficiation().getId_beneficiation()+" ,"
				+ " "+a.getExpert().getId_personne()+", now())");
		connexion.disconnect();
		return res;
	}
	
	public static ArrayList<Affectation> ConsulterAffectation() throws ClassNotFoundException, SQLException {
		ArrayList<Affectation> resultat = new ArrayList<Affectation>();
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from affectation ");
			connexion.disconnect();
			while (res.next()) {				
				Affectation a = new Affectation(res.getInt(1), DaoDonation.ChercherDonationViaId(res.getInt(2)),DaoBeneficiation.ChercherBeneficiationViaId(res.getInt(3)),DaoPersonne.ChercherPersonneViaId(res.getInt(4)),res.getTimestamp(5));
			    resultat.add(a);
			}
			
		  return resultat;
	}
	
	
	
	public static Affectation ChercherAffectationViaId(int id) throws ClassNotFoundException, SQLException {
		Affectation a = null;
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from affectation where id_affectation = "+id+" ");
			connexion.disconnect();
			if (res.next()) {				
				a = new Affectation(res.getInt(1), DaoDonation.ChercherDonationViaId(res.getInt(2)),DaoBeneficiation.ChercherBeneficiationViaId(res.getInt(3)),DaoPersonne.ChercherPersonneViaId(res.getInt(4)),res.getTimestamp(5));
			 
			}
			
		  return a;
	}
	
	
	public static int SupprimerAffectation(int id) throws ClassNotFoundException, SQLException {
		int res = 0;
		connexion.connect();
		res = connexion.Maj("DELETE FROM affectation where id_affectation="+id);
		connexion.disconnect();
		return res;
	}
	
	
	
  }
