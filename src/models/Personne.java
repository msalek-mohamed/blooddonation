package models;

import java.sql.Date;
import java.sql.Timestamp;

public class Personne {
	

	protected int id_personne;
    protected String nom_personne;
    protected String prenom_personne;
    protected String login_personne;
    protected String password_personne;
    protected String cin_personne;
    protected String tel_personne;
    protected String adresse_personne;
    protected Date date_naissance;
    protected Profil profil;
    protected Role role;
    protected Timestamp date_inscription;
    protected String sex;

    
    
	public Personne() {
		super();
		
	}



	public Personne(int id_personne, String nom_personne, String prenom_personne, String login_personne,
			String password_personne, String cin_personne, String tel_personne, String adresse_personne,
			Date date_naissance, Profil profil, Role role, Timestamp date_inscription,String sex) {

		this.id_personne = id_personne;
		this.nom_personne = nom_personne;
		this.prenom_personne = prenom_personne;
		this.login_personne = login_personne;
		this.password_personne = password_personne;
		this.cin_personne = cin_personne;
		this.tel_personne = tel_personne;
		this.adresse_personne = adresse_personne;
		this.date_naissance = date_naissance;
		this.profil = profil;
		this.role = role;
		this.date_inscription = date_inscription;
		this.sex = sex;
	}
	
	
	public Personne(String nom_personne, String prenom_personne, String login_personne,
			String password_personne, String cin_personne, String tel_personne, String adresse_personne,
			Date date_naissance, Profil profil, Role role, Timestamp date_inscription,String sex) {

		this.nom_personne = nom_personne;
		this.prenom_personne = prenom_personne;
		this.login_personne = login_personne;
		this.password_personne = password_personne;
		this.cin_personne = cin_personne;
		this.tel_personne = tel_personne;
		this.adresse_personne = adresse_personne;
		this.date_naissance = date_naissance;
		this.profil = profil;
		this.role = role;
		this.date_inscription = date_inscription;
		this.sex = sex;
	}

	
	public Personne(Personne p) {

		this.id_personne = p.id_personne;
		this.nom_personne = p.nom_personne;
		this.prenom_personne = p.prenom_personne;
		this.login_personne = p.login_personne;
		this.password_personne = p.password_personne;
		this.cin_personne = p.cin_personne;
		this.tel_personne = p.tel_personne;
		this.adresse_personne = p.adresse_personne;
		this.date_naissance = p.date_naissance;
		this.profil = p.profil;
		this.role = p.role;
		this.date_inscription = p.date_inscription;
		this.sex = p.sex;
	}



	public int getId_personne() {
		return id_personne;
	}



	public void setId_personne(int id_personne) {
		this.id_personne = id_personne;
	}



	public String getNom_personne() {
		return nom_personne;
	}



	public void setNom_personne(String nom_personne) {
		this.nom_personne = nom_personne;
	}



	public String getPrenom_personne() {
		return prenom_personne;
	}



	public void setPrenom_personne(String prenom_personne) {
		this.prenom_personne = prenom_personne;
	}



	public String getLogin_personne() {
		return login_personne;
	}



	public void setLogin_personne(String login_personne) {
		this.login_personne = login_personne;
	}



	public String getPassword_personne() {
		return password_personne;
	}



	public void setPassword_personne(String password_personne) {
		this.password_personne = password_personne;
	}



	public String getCin_personne() {
		return cin_personne;
	}



	public void setCin_personne(String cin_personne) {
		this.cin_personne = cin_personne;
	}



	public String getTel_personne() {
		return tel_personne;
	}



	public void setTel_personne(String tel_personne) {
		this.tel_personne = tel_personne;
	}



	public String getAdresse_personne() {
		return adresse_personne;
	}



	public void setAdresse_personne(String adresse_personne) {
		this.adresse_personne = adresse_personne;
	}



	public Date getDate_naissance() {
		return date_naissance;
	}



	public void setDate_naissance(Date date_naissance) {
		this.date_naissance = date_naissance;
	}



	public Profil getProfil() {
		return profil;
	}



	public void setProfil(Profil profil) {
		this.profil = profil;
	}



	public Role getRole() {
		return role;
	}



	public void setRole(Role role) {
		this.role = role;
	}



	public Timestamp getDate_inscription() {
		return date_inscription;
	}



	public void setDate_inscription(Timestamp date_inscription) {
		this.date_inscription = date_inscription;
	}


	public String getSex() {
		return sex;
	}



	public void setSex(String sex) {
		this.sex = sex;
	}



	@Override
	public String toString() {
		return "Personne [id_personne=" + id_personne + ", nom_personne=" + nom_personne + ", prenom_personne="
				+ prenom_personne + ", login_personne=" + login_personne + ", password_personne=" + password_personne
				+ ", cin_personne=" + cin_personne + ", tel_personne=" + tel_personne + ", adresse_personne="
				+ adresse_personne + ", date_naissance=" + date_naissance + ", profil=" + profil + ", role=" + role
				+ ", date_inscription=" + date_inscription + ", sex=" + sex + "]";
	}


	
}
