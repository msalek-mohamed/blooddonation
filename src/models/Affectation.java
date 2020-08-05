package models;

import java.sql.Timestamp;

public class Affectation {
	    private int id_affectation;
	    private Donation donnation;
	    private Beneficiation beneficiation;
	    private Personne expert;
	    private Timestamp date_affectation;
	    
	    public Affectation() {
			super();
		}
	    
	    
		public Affectation(int id_affectation, Donation donnation, Beneficiation beneficiation, Personne expert,
				Timestamp date_affectation) {
		
			this.id_affectation = id_affectation;
			this.donnation = donnation;
			this.beneficiation = beneficiation;
			this.expert = expert;
			this.date_affectation = date_affectation;
		}
	    
		
		public Affectation(Donation donnation, Beneficiation beneficiation, Personne expert) {
			this.donnation = donnation;
			this.beneficiation = beneficiation;
			this.expert = expert;
		
		}
		
		
		public Affectation(Affectation a) {
			super();
			this.id_affectation = a.id_affectation;
			this.donnation = a.donnation;
			this.beneficiation = a.beneficiation;
			this.expert = a.expert;
			this.date_affectation = a.date_affectation;
		}
	
	
		public int getId_affectation() {
			return id_affectation;
		}
	
	
		public void setId_affectation(int id_affectation) {
			this.id_affectation = id_affectation;
		}
	
	
		public Donation getDonnation() {
			return donnation;
		}
	
	
		public void setDonnation(Donation donnation) {
			this.donnation = donnation;
		}
	
	
		public Beneficiation getBeneficiation() {
			return beneficiation;
		}
	
	
		public void setBeneficiation(Beneficiation beneficiation) {
			this.beneficiation = beneficiation;
		}
	
	
		public Personne getExpert() {
			return expert;
		}
	
	
		public void setExpert(Personne expert) {
			this.expert = expert;
		}
	
	
		public Timestamp getDate_affectation() {
			return date_affectation;
		}
	
	
		public void setDate_affectation(Timestamp date_affectation) {
			this.date_affectation = date_affectation;
		}
	    
    
    
}
