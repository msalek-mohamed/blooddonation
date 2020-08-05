package models;


import java.sql.Timestamp;

public class Message {
	
	private int id_message;
	private String sujet_message;
	private String contenu_message;
	private Timestamp date_envoie;
	private int etat_message;
	private Personne personne_envoyer;
	private Personne personne_recevoir;
	
	
	public Message(int id_message,String sujet_message ,String contenu_message,Timestamp date_envoie, int etat_message ,Personne personne_envoyer	, Personne personne_recevoir) {
		this.id_message = id_message;
		this.sujet_message=sujet_message;
		this.contenu_message = contenu_message;
		this.date_envoie = date_envoie;
		this.etat_message = etat_message;
		this.personne_envoyer=personne_envoyer;
		this.personne_recevoir=personne_recevoir;
		
	}
	public Message( String sujet_message,String contenu_message ,Personne personne_envoyer	, Personne personne_recevoir) {
		this.sujet_message = sujet_message;
		this.contenu_message = contenu_message;
		this.personne_envoyer=personne_envoyer;
		this.personne_recevoir=personne_recevoir;

	}
	public Message(Message M) {
		this.id_message = M.id_message;
		this.sujet_message = M.sujet_message;
		this.contenu_message = M.contenu_message;
		this.date_envoie = M.date_envoie;
		this.etat_message = M.etat_message;
		this.personne_envoyer=M.personne_envoyer;
		this.personne_recevoir=M.personne_recevoir;
		
	}
	public Message() {
		super();
	}

	public int getId_message() {
		return id_message;
	}

	public void setId_message(int id_message) {
		this.id_message = id_message;
	}

	public String getContenu_message() {
		return contenu_message;
	}

	public void setContenu_message(String contenu_message) {
		this.contenu_message = contenu_message;
	}

	public Timestamp getDate_envoie() {
		return date_envoie;
	}
	
	public int getEtat_message() {
		return etat_message;
	}
	
	public void setEtat_message(int etat_message) {
		this.etat_message = etat_message;
	}
	
	public void setDate_envoie(Timestamp date_envoie) {
		this.date_envoie = date_envoie;
	}
	
	public Personne getPersonne_envoyer() {
		return personne_envoyer;
	}
	
	public void setPersonne_envoyer(Personne personne_envoyer) {
		this.personne_envoyer = personne_envoyer;
	}
	
	public Personne getPersonne_recevoir() {
		return personne_recevoir;
	}
	
	public void setPersonne_recevoir(Personne personne_recevoir) {
		this.personne_recevoir = personne_recevoir;
	}
	public String getSujet_message() {
		return sujet_message;
	}
	public void setSujet_message(String sujet_message) {
		this.sujet_message = sujet_message;
	}
	@Override
	public String toString() {
		return "Message [id_message=" + id_message + ", contenu_message=" + contenu_message + ", sujet_message="
				+ sujet_message + ", date_envoie=" + date_envoie + ", etat_message=" + etat_message
				+ ", personne_envoyer=" + personne_envoyer + ", personne_recevoir=" + personne_recevoir + "]";
	}
	
	

}
