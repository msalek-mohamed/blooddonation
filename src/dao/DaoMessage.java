package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.mysql.jdbc.ResultSet;
import models.Message;

public class DaoMessage {
	public static int EnvoyerMessage(Message M ) throws ClassNotFoundException, SQLException  {
		int res = 0;
		connexion.connect();
		res = connexion.Maj("INSERT INTO message(sujet_message , contenu_message , date_envoie, etat_message , id_envoyer , id_recevoir ) VALUES  ('"+M.getSujet_message()+"','"+M.getContenu_message()+"',now(),'-1', "+M.getPersonne_envoyer().getId_personne()+","+M.getPersonne_recevoir().getId_personne()+")");
		connexion.disconnect();
		return res;
	}
	
	public static int SupprimerMessage(int id ) throws ClassNotFoundException, SQLException  {
		int res = 0;
		connexion.connect();
		res = connexion.Maj("DELETE FROM message where id_message="+id);
		connexion.disconnect();
		return res;
	}
	
	public static int SupprimerTousMessage(int[] ids) throws ClassNotFoundException, SQLException {
		connexion.connect();
		int res=1;
		String sql = "DELETE FROM message WHERE id_message=";
		
		for(int i=0; i<ids.length; i++) {
			if(res == 1) {
				res = connexion.Maj(sql+ids[i]);
			}	
		}
		connexion.disconnect();
		return res;
	}
	
	public static List<Message> ConsulterMessages() throws ClassNotFoundException, SQLException {
		List<Message> messages = new ArrayList<Message>();
		connexion.connect();
		ResultSet res = connexion.Select("SELECT * FROM message");
		connexion.disconnect();
		try {
		   while (res.next()) 
		   {
			   Message m= new Message(res.getInt(1),res.getString(2),res.getString(3),res.getTimestamp(4),res.getInt(5),DaoPersonne.ChercherPersonneViaId(res.getInt(6)),DaoPersonne.ChercherPersonneViaId(res.getInt(7)));
			   messages.add(m);			
		   }
		}catch(SQLException e){
			e.printStackTrace();
			
		}
		return messages;
	}
	
	public static Message ChercherMessageViaId(int id) throws ClassNotFoundException, SQLException {
		Message m=null;		
		connexion.connect();
		ResultSet res = connexion.Select("select * from message where id_message ="+id);
		connexion.disconnect();
		if(res.next()) {
			    m= new Message(res.getInt(1),res.getString(2),res.getString(3),res.getTimestamp(4),res.getInt(5),DaoPersonne.ChercherPersonneViaId(res.getInt(6)),DaoPersonne.ChercherPersonneViaId(res.getInt(7)));
		}
		
		return m;
	 }
		 
	public static  ArrayList<Message> ConsulterMessagesParUtilisateur(int ide , int idr ) throws ClassNotFoundException, SQLException {
		 ArrayList<Message> messages = new ArrayList<Message>();
			connexion.connect();
			ResultSet res = connexion.Select("SELECT * FROM message where (id_recevoir ="+idr+" and id_envoyer ="+ide+") or (id_recevoir ="+ide+" and id_envoyer ="+idr+")  order by date_envoie  ");
			connexion.disconnect();
			try {
			   while (res.next()) 
			   {
				   Message m= new Message(res.getInt(1),res.getString(2),res.getString(3),res.getTimestamp(4),res.getInt(5),DaoPersonne.ChercherPersonneViaId(res.getInt(6)),DaoPersonne.ChercherPersonneViaId(res.getInt(7)));
				   messages.add(m);			
			   }
			}catch(SQLException e){
				e.printStackTrace();
				
			}
			return messages;
		}
	 
	 public static  ArrayList<Message> ConsulterMessagesSansDuplication(int id) throws ClassNotFoundException, SQLException {
		 ArrayList<Message> messages = new ArrayList<Message>();
			connexion.connect();			
			ResultSet res = connexion.Select("SELECT * FROM `message` WHERE id_recevoir = "+id);
			connexion.disconnect();
			try {
			   while (res.next()) 
			   {
				   Message m= new Message(res.getInt(1),res.getString(2),res.getString(3),res.getTimestamp(4),res.getInt(5),DaoPersonne.ChercherPersonneViaId(res.getInt(6)),DaoPersonne.ChercherPersonneViaId(res.getInt(7)));
				   messages.add(m);			
			   }
			}catch(SQLException e){
				e.printStackTrace();
				
			}
			return messages;
		}
	
	 public static int ChangerEtatMessage(int id_envoyer) throws ClassNotFoundException, SQLException {
		int res = 0; 
		 connexion.connect();
		 res = connexion.Maj("UPDATE message SET etat_message = 1 WHERE id_envoyer = "+id_envoyer);
		 connexion.disconnect();
	 return res;
	 }
	 
	 /*public static int SupprimerMessageViaIdUtilisateur(int id ) throws ClassNotFoundException, SQLException  {
			int res = 0;
			connexion.connect();
			res = connexion.Maj("DELETE FROM message where id_recevoir="+id+" or id_envoyer="+id+"  ");
			connexion.disconnect();
			return res;
		}*/
		
	 
	 public static int NombreDesMessages(int id_recevoir, int id_env) throws ClassNotFoundException, SQLException {
		 
		 int res = 0;
		 connexion.connect();
		 ResultSet count = connexion.Select("select count(*) from message where (id_recevoir = "+id_recevoir+"  and id_envoyer = "+id_env+") or (id_envoyer="+id_recevoir+"  and id_recevoir = "+id_env+") ");
		 connexion.disconnect();
		 if(count.next()) {
			 res = count.getInt(1);
		 }
		 return res;
	 }
	 
	 
    }
   

