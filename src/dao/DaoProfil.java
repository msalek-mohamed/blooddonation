package dao;

import java.sql.SQLException;

import com.mysql.jdbc.ResultSet;

import models.Profil;



public class DaoProfil {
	
	public static int AjouterProfil(int statut) throws ClassNotFoundException, SQLException {
		int Res = 0;
		connexion.connect();
		Res = connexion.Maj("INSERT INTO profil(statut,url_image) VALUES ("+statut+",'profil_defaut.png')");
		connexion.disconnect();
		return Res;
		
	}

	public static Profil ConsulterProfil(int id) throws ClassNotFoundException, SQLException {
		Profil pr = null;
		connexion.connect();
		ResultSet resultat = connexion.Select("SELECT * FROM profil WHERE id_profil = '"+id+"' ");
		connexion.disconnect();
		if(resultat.next()) {
			pr = new Profil(resultat.getInt(1),resultat.getInt(2),resultat.getString(3));
		}
		
		return pr;
	}
	
	
    public static int ModifierProfil(Profil p) throws ClassNotFoundException, SQLException {
		
		int resultat = 0 ;
		String sql = "UPDATE profil SET statut="+p.getStatut()+", url_image ='"+p.getUrl_image()+"'  WHERE id_profil="+p.getId_profil()+" ";
		connexion.connect();
		resultat = connexion.Maj(sql);		
		connexion.disconnect();
		
		return resultat;	
	}
    
    
    public static int LastProfil() throws ClassNotFoundException, SQLException {
	  ResultSet resultat = null ;
	  int LastId = 0;
		connexion.connect();
		resultat = connexion.Select(" SELECT max(id_profil) from profil	");	
		connexion.disconnect();
		if(resultat.next()) {
			LastId = resultat.getInt(1);
		}
	
		return LastId;
    }
  
	 public static int ChangerEtatProfil(int idProfil , int statut) throws SQLException, ClassNotFoundException {
		 int res = 0;
		 connexion.connect();
		 res = connexion.Maj("UPDATE profil SET statut = "+statut+" WHERE id_profil="+idProfil+"");		
		 connexion.disconnect();
		 return res;
	 }
	 
	 public static int SupprimerProfil(int idProfil) throws SQLException, ClassNotFoundException {
		 connexion.connect();
		 int res = connexion.Maj("DELETE FROM profil WHERE id_profil = "+idProfil+"");		
		 connexion.disconnect();
		 return res;
	 }
}
