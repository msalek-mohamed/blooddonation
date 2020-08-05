package models;

import java.sql.Timestamp;

public class Beneficiation {

    private int id_beneficiation;
    private String groupe_sangaire;
    private int quantite;
    private Personne beneficier;
    private int etat_beneficiation;
    private Timestamp date_beneficiation;
    
    
	public Beneficiation() {
		super();
	}
	
	public Beneficiation(int id_beneficiation) {
		this.id_beneficiation = id_beneficiation;
	}
	
	public Beneficiation(String groupe_sangaire, int quantite, Personne beneficier) {
		
		this.groupe_sangaire = groupe_sangaire;
		this.quantite = quantite;
		this.beneficier = beneficier;

	}
	
	
	public Beneficiation(int id_beneficiation, String groupe_sangaire, int quantite, Personne beneficier,
			int etat_beneficiation,Timestamp date_beneficiation) {

		this.id_beneficiation = id_beneficiation;
		this.groupe_sangaire = groupe_sangaire;
		this.quantite = quantite;
		this.beneficier = beneficier;
		this.etat_beneficiation = etat_beneficiation;
		this.date_beneficiation = date_beneficiation;
	}
	
	
	public Beneficiation(Beneficiation b) {

		this.id_beneficiation = b.id_beneficiation;
		this.groupe_sangaire = b.groupe_sangaire;
		this.quantite = b.quantite;
		this.beneficier = b.beneficier;
		this.etat_beneficiation = b.etat_beneficiation;
		this.date_beneficiation = b.date_beneficiation;
	}


	public int getId_beneficiation() {
		return id_beneficiation;
	}


	public void setId_beneficiation(int id_beneficiation) {
		this.id_beneficiation = id_beneficiation;
	}


	public String getGroupe_sangaire() {
		return groupe_sangaire;
	}


	public void setGroupe_sangaire(String groupe_sangaire) {
		this.groupe_sangaire = groupe_sangaire;
	}


	public int getQuantite() {
		return quantite;
	}


	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}


	public Personne getBeneficier() {
		return beneficier;
	}


	public void setBeneficier(Personne beneficier) {
		this.beneficier = beneficier;
	}


	public Timestamp getDate_beneficiation() {
		return date_beneficiation;
	}


	public void setDate_beneficiation(Timestamp date_beneficiation) {
		this.date_beneficiation = date_beneficiation;
	}


	public int getEtat_beneficiation() {
		return etat_beneficiation;
	}


	public void setEtat_beneficiation(int etat_beneficiation) {
		this.etat_beneficiation = etat_beneficiation;
	}


	@Override
	public String toString() {
		return "Beneficiation [id_beneficiation=" + id_beneficiation + ", groupe_sangaire=" + groupe_sangaire
				+ ", quantite=" + quantite + ", beneficier=" + beneficier + ", etat_beneficiation=" + etat_beneficiation
				+ ", date_beneficiation=" + date_beneficiation + "]";
	}

    
	
    	
 }
