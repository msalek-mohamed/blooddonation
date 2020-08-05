package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import com.mysql.jdbc.ResultSet;
import models.Personne;
import models.Role;



public class DaoPersonne {

	public static int AjouterPersonne(Personne u, int id_profil) throws ClassNotFoundException, SQLException {
		
		int resultat = 0 ;
		String sql = " INSERT INTO personne(`nom_personne`, `prenom_personne`, `login_personne`, "
				+ "`password_personne`, `cin_personne`, `tel_personne`, `adresse_personne`, "
				+ "`date_naissance`, `id_profil`, `role_personne`, `date_inscription`, `sex`)"
				+ " VALUES ('"+u.getNom_personne()+"','"+u.getPrenom_personne()+"','"+u.getLogin_personne()+"',"
				+ "'"+u.getPassword_personne()+"','"+u.getCin_personne()+"','"+u.getTel_personne()+"','"+u.getAdresse_personne()+"'"
				+ ",'"+u.getDate_naissance()+"',"+id_profil+",'"+u.getRole()+"',now(), '"+u.getSex()+"' )" ;
		connexion.connect();
		resultat = connexion.Maj(sql);		
		connexion.disconnect();
		
		return resultat;		
	}
	
  public static int VérifierEmail(String login) throws ClassNotFoundException, SQLException {
		
		ResultSet res;
		int rs = 0;
		
		connexion.connect();
		res = connexion.Select("select id_personne from personne WHERE 	login_personne  ='"+login+"' ");
		connexion.disconnect();
		if(res.next()) {
			rs = res.getInt(1);
		}
		
		return rs;
	 }
  
  public static int VérifierEmail_Password(String login, String password) throws ClassNotFoundException, SQLException {
		
		ResultSet res;
		int rs = 0;
		
		connexion.connect();
		res = connexion.Select("select id_personne from personne WHERE login_personne  ='"+login+"' and password_personne  ='"+password+"' ");
		connexion.disconnect();
		if(res.next()) {
			rs = res.getInt(1);
		}
		
		return rs;
	 }

  public static ArrayList<Personne> ConsulterPersonne() throws SQLException, ClassNotFoundException {

	  ArrayList<Personne> resultat = new ArrayList<Personne>();
	  
	  connexion.connect();
		ResultSet res = connexion.Select("select * from personne ");
		connexion.disconnect();
		Role role;
		while (res.next()) {
			if(res.getString(11).equals("utilisateur")) {
				role = Role.utilisateur;
			}
			else if(res.getString(11).equals("expert")) {
				role = Role.expert;
			}
			else {
				role = Role.admin;
			}
			
			Personne personne = new Personne(res.getInt(1),res.getString(2),res.getString(3),res.getString(4), res.getString(5), res.getString(6),res.getString(7), res.getString(8),res.getDate(9), DaoProfil.ConsulterProfil(res.getInt(10)), role, res.getTimestamp(12),res.getString(13));
			resultat.add(personne);
		}
		
	  return resultat;
  }
  

  
  public static int modifierPersonne(Personne p) throws ClassNotFoundException, SQLException {
		 int rs ;
		                                          
		 connexion.connect();
		 rs = connexion.Maj( "update personne set "
		 	+ "nom_personne ='"+p.getNom_personne()+"',"
		 	+ "prenom_personne ='"+p.getPrenom_personne()+"',"
		 	+ " login_personne = '"+p.getLogin_personne()+"',"
		 	+ "cin_personne = '"+p.getCin_personne()+"',"
		 	+ "tel_personne ='"+p.getTel_personne()+"',"
		 	+ " adresse_personne = '"+p.getAdresse_personne()+"',"
		    + " date_naissance = '"+p.getDate_naissance()+"' "
		    + " WHERE id_personne = "+p.getId_personne()+" ");
		 connexion.disconnect();
		 return rs;
	 }
  
    
	public static Personne ChercherPersonneViaId(int id_personne) throws SQLException, ClassNotFoundException {
		 
		  Personne resultat = null ;
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from personne where id_personne ="+id_personne+" ");
			connexion.disconnect();
			Role role;
			if(res.next()) {
				if(res.getString(11).equals("utilisateur")) {
					role = Role.utilisateur;
				}
				else if(res.getString(11).equals("expert")){
					role = Role.expert;
				}
				else {
					role = Role.admin;
				}
				System.out.println(res.getString(11));
			  resultat = new Personne(res.getInt(1),res.getString(2),res.getString(3),res.getString(4), res.getString(5), res.getString(6),res.getString(7), res.getString(8),res.getDate(9), DaoProfil.ConsulterProfil(res.getInt(10)), role, res.getTimestamp(12),res.getString(13));

			
	}
   return resultat;
 }
  
  
	
	 
	  public static int modifierPasswordPersonne(String password,int id_per) throws ClassNotFoundException, SQLException {
			 int rs ;
			                                          
			 connexion.connect();
			 rs = connexion.Maj( "update personne set password_personne = '"+password+"' WHERE id_personne = "+id_per+" ");
			 connexion.disconnect();
			 return rs;
		 }
	  
	
	  public static ArrayList<Personne> ConsulterListesUtilisateurs() throws SQLException, ClassNotFoundException {

		  ArrayList<Personne> resultat = new ArrayList<Personne>();
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from personne where role_personne = 'utilisateur'");
			connexion.disconnect();
			while (res.next()) {				
				Personne personne = new Personne(res.getInt(1),res.getString(2),res.getString(3),res.getString(4), res.getString(5), res.getString(6),res.getString(7), res.getString(8),res.getDate(9), DaoProfil.ConsulterProfil(res.getInt(10)), Role.utilisateur, res.getTimestamp(12),res.getString(13));
			    resultat.add(personne);
			}
			
		  return resultat;
	  }
	
	  public static ArrayList<Personne> ConsulterListesexpert() throws SQLException, ClassNotFoundException {

		  ArrayList<Personne> resultat = new ArrayList<Personne>();
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from personne where role_personne = 'expert'");
			connexion.disconnect();
			while (res.next()) {				
				Personne personne = new Personne(res.getInt(1),res.getString(2),res.getString(3),res.getString(4), res.getString(5), res.getString(6),res.getString(7), res.getString(8),res.getDate(9), DaoProfil.ConsulterProfil(res.getInt(10)), Role.expert, res.getTimestamp(12),res.getString(13));
			    resultat.add(personne);
			}
			
		  return resultat;
	  }
	  
	  
	  public static int getProfileByUserId(int id_personne) throws SQLException, ClassNotFoundException {
			 
		  int resultat = 0 ;
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select id_profil from personne where id_personne ="+id_personne+" ");
			connexion.disconnect();
			if(res.next()) {
				resultat = res.getInt(1);
	}
			
			
			return resultat;
	}
	  
	public static int SupprimerPersonne(int idPersonne) throws ClassNotFoundException, SQLException {
		
		 connexion.connect();
		 int res = connexion.Maj("DELETE FROM personne WHERE id_personne = "+idPersonne+" ");		
		 connexion.disconnect();
		 return res;
		
	}
		
}
