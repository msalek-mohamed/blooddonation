package models;

import java.sql.Timestamp;

public class Donation {
    private int id_donation;
    private float poids_donneur;
    private float taille_donneur;
    private String groupe_sangaire;
    private Personne donneur;
    private int etat_donation;
    private Timestamp date_donation;
    
    
    public Donation() {
		super();
	}
    
    public Donation(int id_donation) {
    	this.id_donation = id_donation;
	}
    
	public Donation(float poids_donneur, float taille_donneur, String groupe_sangaire,
			Personne donneur,int etat_donation) {

		this.poids_donneur = poids_donneur;
		this.taille_donneur = taille_donneur;
		this.groupe_sangaire = groupe_sangaire;
		this.donneur = donneur;
		this.etat_donation = etat_donation;
	}


	public Donation(int id_donation, float poids_donneur, float taille_donneur, String groupe_sangaire,
			Personne donneur, int etat_donation,Timestamp date_donation) {
		this.id_donation = id_donation;
		this.poids_donneur = poids_donneur;
		this.taille_donneur = taille_donneur;
		this.groupe_sangaire = groupe_sangaire;
		this.donneur = donneur;
		this.etat_donation = etat_donation;
		this.date_donation = date_donation;
	}
	
	
	public Donation(Donation d) {
		this.id_donation = d.id_donation;
		this.poids_donneur = d.poids_donneur;
		this.taille_donneur = d.taille_donneur;
		this.groupe_sangaire = d.groupe_sangaire;
		this.donneur = d.donneur;
		this.etat_donation = d.etat_donation;
		this.date_donation = d.date_donation;
	}


	public int getId_donation() {
		return id_donation;
	}


	public void setId_donation(int id_donation) {
		this.id_donation = id_donation;
	}


	public float getPoids_donneur() {
		return poids_donneur;
	}


	public void setPoids_donneur(float poids_donneur) {
		this.poids_donneur = poids_donneur;
	}


	public float getTaille_donneur() {
		return taille_donneur;
	}


	public void setTaille_donneur(float taille_donneur) {
		this.taille_donneur = taille_donneur;
	}


	public String getGroupe_sangaire() {
		return groupe_sangaire;
	}


	public void setGroupe_sangaire(String groupe_sangaire) {
		this.groupe_sangaire = groupe_sangaire;
	}


	public Personne getDonneur() {
		return donneur;
	}


	public void setDonneur(Personne donneur) {
		this.donneur = donneur;
	}


	public Timestamp getDate_donation() {
		return date_donation;
	}


	public void setDate_donation(Timestamp date_donation) {
		this.date_donation = date_donation;
	}

	

	public int getEtat_donation() {
		return etat_donation;
	}


	public void setEtat_donation(int etat_donation) {
		this.etat_donation = etat_donation;
	}


	@Override
	public String toString() {
		return "Donation [id_donation=" + id_donation + ", poids_donneur=" + poids_donneur + ", taille_donneur="
				+ taille_donneur + ", groupe_sangaire=" + groupe_sangaire + ", donneur=" + donneur + ", etat_donation="
				+ etat_donation + ", date_donation=" + date_donation + "]";
	}


    
    
}
