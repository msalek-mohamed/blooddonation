package services;

import java.sql.SQLException;
import java.util.ArrayList;
import dao.DaoMessage;
import models.Message;

public class ServiceMessage {

	
	public  static int EnvoyerMessage(Message M ) throws ClassNotFoundException, SQLException{
		return DaoMessage.EnvoyerMessage(M);
	}
	
	public static int SupprimerMessage(int id) throws ClassNotFoundException, SQLException{
		return DaoMessage.SupprimerMessage(id);
	}
	
	public static int SupprimerTousMessage(int[] ids) throws ClassNotFoundException, SQLException{
		return DaoMessage.SupprimerTousMessage(ids);
	}
	
	public static ArrayList<Message> ConsulterMessagesParUtilisateur(int ide , int idr ) throws ClassNotFoundException, SQLException{
		return DaoMessage.ConsulterMessagesParUtilisateur(ide, idr);
	}
	
	public static ArrayList<Message> ConsulterMessagesSansDuplication(int id_recevoir) throws ClassNotFoundException, SQLException{
		return DaoMessage.ConsulterMessagesSansDuplication(id_recevoir);
	}
	
	
	public static Message ChercherMessageViaId(int id) throws ClassNotFoundException, SQLException {
		return DaoMessage.ChercherMessageViaId(id);
	}
	
	public static int ChangerEtatMessage(int id_envoyer) throws ClassNotFoundException, SQLException {
		return DaoMessage.ChangerEtatMessage(id_envoyer);
	}
	
	public static int NombreMessageNonLu(int id_recevoir,int id_envoyer) throws ClassNotFoundException, SQLException {
		return DaoMessage.NombreDesMessages(id_recevoir,id_envoyer);
	}


}
