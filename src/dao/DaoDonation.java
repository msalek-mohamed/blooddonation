package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.ResultSet;

import models.Donation;

public class DaoDonation {
   
	public static int AjouterDonation(Donation d) throws ClassNotFoundException, SQLException {
		int res = 0;
		connexion.connect();
		res = connexion.Maj("INSERT INTO `donation`(poids_donneur, taille_donneur,"
				+ " groupe_sangaire, id_donneur, etat_donation, date_donation) "
				+ "VALUES("+d.getPoids_donneur()+", "+d.getTaille_donneur()+" ,"
				+ " '"+d.getGroupe_sangaire()+"',"+d.getDonneur().getId_personne()+",0 , now())");
		connexion.disconnect();
		return res;
	}
	
	public static ArrayList<Donation> ConsulterDonation() throws ClassNotFoundException, SQLException {
		ArrayList<Donation> resultat = new ArrayList<Donation>();
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from donation ");
			connexion.disconnect();
			while (res.next()) {				
				Donation d = new Donation(res.getInt(1),res.getFloat(2), res.getFloat(3), res.getString(4), DaoPersonne.ChercherPersonneViaId(res.getInt(5)), res.getInt(6), res.getTimestamp(7));
			    resultat.add(d);
			}
			
		  return resultat;
	}
	
	
	public static ArrayList<Donation> ConsulterDonationNovalide() throws ClassNotFoundException, SQLException {
		ArrayList<Donation> resultat = new ArrayList<Donation>();
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from donation where etat_donation = 0");
			connexion.disconnect();
			while (res.next()) {				
				Donation d = new Donation(res.getInt(1),res.getFloat(2), res.getFloat(3), res.getString(4), DaoPersonne.ChercherPersonneViaId(res.getInt(5)), res.getInt(6), res.getTimestamp(7));
			    resultat.add(d);
			}
			
		  return resultat;
	}
	
	public static ArrayList<Donation> ChercherDonationViaIdDonneur(int id) throws ClassNotFoundException, SQLException {
		ArrayList<Donation> resultat = new ArrayList<Donation>();
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from donation where id_donneur = "+id+"");
			connexion.disconnect();
			while (res.next()) {				
				Donation d = new Donation(res.getInt(1),res.getFloat(2), res.getFloat(3), res.getString(4), DaoPersonne.ChercherPersonneViaId(res.getInt(5)), res.getInt(6), res.getTimestamp(7));
			    resultat.add(d);
			}
			
		  return resultat;
	}
	
	
	public static ArrayList<Donation> ChercherDonationViaGroupSang(String GroupSanguin) throws ClassNotFoundException, SQLException {
		ArrayList<Donation> resultat = new ArrayList<Donation>();
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from donation where groupe_sangaire = '"+GroupSanguin+"' and etat_donation = 1 ");
			connexion.disconnect();
			while (res.next()) {				
				Donation d = new Donation(res.getInt(1),res.getFloat(2), res.getFloat(3), res.getString(4), DaoPersonne.ChercherPersonneViaId(res.getInt(5)), res.getInt(6), res.getTimestamp(7));
			    resultat.add(d);
			}
			
		  return resultat;
	}
	
	
	public static Donation ChercherDonationViaId(int id) throws ClassNotFoundException, SQLException {
		Donation d = null;
		  
		  connexion.connect();
			ResultSet res = connexion.Select("select * from donation where id_donation = "+id+" ");
			connexion.disconnect();
			if (res.next()) {				
				 d = new Donation(res.getInt(1),res.getFloat(2), res.getFloat(3), res.getString(4), DaoPersonne.ChercherPersonneViaId(res.getInt(5)), res.getInt(6), res.getTimestamp(7));
			 
			}
			
		  return d;
	}
	
	public static int ChangerEtatDonation(int id,int etat) throws ClassNotFoundException, SQLException {
		int res = 0; 
		 connexion.connect();
		 res = connexion.Maj("UPDATE donation SET etat_donation = "+etat+" WHERE id_donation = "+id);
		 connexion.disconnect();
	 return res;
	 }
	
	
	public static int SupprimerDonation(int id) throws ClassNotFoundException, SQLException {
		int res = 0;
		connexion.connect();
		res = connexion.Maj("DELETE FROM donation where id_donation="+id);
		connexion.disconnect();
		return res;
	}
	
	
	
  }
