package models;

import java.sql.Date;
import java.sql.Timestamp;

public class Utilisateur extends Personne{
	
private int id_utilisateur;

	public Utilisateur(int id_personne, String nom_personne, String prenom_personne, String login_personne,
			String password_personne, String cin_personne, String tel_personne, String adresse_personne,
			Date date_naissance, Profil profil, Role role, Timestamp date_inscription , String sex) {
		super(id_personne, nom_personne, prenom_personne, login_personne, password_personne, cin_personne, tel_personne,
				adresse_personne, date_naissance, profil, role, date_inscription, sex);
		// TODO Auto-generated constructor stub
	}


	
	public Utilisateur(String nom_personne, String prenom_personne, String login_personne, String password_personne,
			String cin_personne, String tel_personne, String adresse_personne, Date date_naissance, Profil profil,
			Role role, Timestamp date_inscription,String sex) {
		super(nom_personne, prenom_personne, login_personne, password_personne, cin_personne, tel_personne, adresse_personne,
				date_naissance, profil, role, date_inscription,sex);
		// TODO Auto-generated constructor stub
	}



	public Utilisateur(Utilisateur p) {
		super();
		this.id_utilisateur = 0;
		
	}


	public int getId_utilisateur() {
		return id_utilisateur;
	}

	public void setId_utilisateur(int id_utilisateur) {
		this.id_utilisateur = id_utilisateur;
	}
	
	@Override
	public String toString() {
		return "Utilisateur [id_utilisateur=" + id_utilisateur + super.toString()+ "]";
	}
	

}
