package models;

public class Profil {


    private int id_profil;
    private int statut;
    private String url_image;
	
    
    
	public Profil(int id_profil, int statut, String url_image) {
		this.id_profil = id_profil;
		this.statut = statut;
		this.url_image = url_image;
	}
	public Profil( int statut, String url_image) {
		this.statut = statut;
		this.url_image = url_image;
	}
	public Profil(Profil P) {
		this.id_profil = P.id_profil;
		this.statut = P.statut;
		this.url_image = P.url_image;
	}
	public Profil() {
		super();
	}
	
	public int getId_profil() {
		return id_profil;
	}
	
	public void setId_profil(int id_profil) {
		this.id_profil = id_profil;
	}
	
	public int getStatut() {
		return statut;
	}
	
	public void setStatut(int statut) {
		this.statut = statut;
	}
	
	public String getUrl_image() {
		return url_image;
	}
	
	public void setUrl_image(String url_image) {
		this.url_image = url_image;
	}
	
	@Override
	public String toString() {
		return "Profil [id_profil=" + id_profil + ", statut=" + statut + ", url_image=" + url_image + "]";
	}
	
}
