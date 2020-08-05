package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.ResultSet;
import models.Beneficiation;


public class DaoBeneficiation {
	
	public static int AjouterBeneficiation(Beneficiation d) throws ClassNotFoundException, SQLException {
		int res = 0;
		connexion.connect();
		res = connexion.Maj("INSERT INTO beneficiation(groupe_sangaire, quantite,id_beneficier,"
				+ " etat_beneficiation, date_beneficiation) "
				+ "VALUES('"+d.getGroupe_sangaire()+"' ,"+d.getQuantite()+" , "
				+ ""+d.getBeneficier().getId_personne()+" ,0, now() )");
		connexion.disconnect();
		return res;
	}
	
	public static ArrayList<Beneficiation> ConsulterBeneficiation() throws ClassNotFoundException, SQLException {
		ArrayList<Beneficiation> resultat = new ArrayList<Beneficiation>();
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from beneficiation ");
			connexion.disconnect();
			while (res.next()) {				
				Beneficiation b = new Beneficiation(res.getInt(1), res.getString(2), res.getInt(3), DaoPersonne.ChercherPersonneViaId(res.getInt(4)), res.getInt(5), res.getTimestamp(6));
			    resultat.add(b);
			}
			
		  return resultat;
	}
	
	
	public static ArrayList<Beneficiation> ConsulterBeneficiationNovalide() throws ClassNotFoundException, SQLException {
		ArrayList<Beneficiation> resultat = new ArrayList<Beneficiation>();
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from beneficiation where etat_beneficiation = 0");
			connexion.disconnect();
			while (res.next()) {				
				Beneficiation b = new Beneficiation(res.getInt(1), res.getString(2), res.getInt(3), DaoPersonne.ChercherPersonneViaId(res.getInt(4)), res.getInt(5), res.getTimestamp(6));
			    resultat.add(b);
			}
			
		  return resultat;
	}
	
	public static ArrayList<Beneficiation> ChercherBeneficiationViaIdBeneficier(int id) throws ClassNotFoundException, SQLException {
		ArrayList<Beneficiation> resultat = new ArrayList<Beneficiation>();
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from beneficiation where id_beneficier = "+id+"");
			connexion.disconnect();
			while (res.next()) {				
				Beneficiation b = new Beneficiation(res.getInt(1), res.getString(2), res.getInt(3), DaoPersonne.ChercherPersonneViaId(res.getInt(4)), res.getInt(5), res.getTimestamp(6));
			    resultat.add(b);
			}
			
		  return resultat;
	}
	
	
	public static ArrayList<Beneficiation> ChercherBeneficiationViaGroupSang(String GroupSanguin) throws ClassNotFoundException, SQLException {
		ArrayList<Beneficiation> resultat = new ArrayList<Beneficiation>();
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from beneficiation where groupe_sangaire = '"+GroupSanguin+"' and etat_beneficiation = 1 ");
			connexion.disconnect();
			while (res.next()) {				
				Beneficiation b = new Beneficiation(res.getInt(1), res.getString(2), res.getInt(3), DaoPersonne.ChercherPersonneViaId(res.getInt(4)), res.getInt(5), res.getTimestamp(6));
			    resultat.add(b);
			}
			
		  return resultat;
	}
	
	public static Beneficiation ChercherBeneficiationViaId(int id) throws ClassNotFoundException, SQLException {
		   Beneficiation b = null;
		  connexion.connect();
			ResultSet res = connexion.Select("select * from beneficiation where id_beneficiation ="+id+" ");
			connexion.disconnect();
			if (res.next()) {				
				b = new Beneficiation(res.getInt(1), res.getString(2), res.getInt(3), DaoPersonne.ChercherPersonneViaId(res.getInt(4)), res.getInt(5), res.getTimestamp(6));
			    
			}
			
		  return b;
	}
	
	public static int ChangerEtatBeneficiation(int id,int etat) throws ClassNotFoundException, SQLException {
		int res = 0; 
		 connexion.connect();
		 res = connexion.Maj("UPDATE beneficiation SET etat_beneficiation = "+etat+" WHERE id_beneficiation = "+id);
		 connexion.disconnect();
	 return res;
	 }
	
	
	public static int SupprimerBeneficiation(int id) throws ClassNotFoundException, SQLException {
		int res = 0;
		connexion.connect();
		res = connexion.Maj("DELETE FROM beneficiation where id_beneficiation="+id);
		connexion.disconnect();
		return res;
	}

}
