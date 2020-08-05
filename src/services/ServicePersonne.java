package services;
import java.sql.SQLException;
import java.util.ArrayList;

import dao.DaoPersonne;
import dao.DaoProfil;
import models.Personne;


public class ServicePersonne {
	// Inscription d'un utilisateur
	public static int AjouterPersonne(Personne U,int statut) throws ClassNotFoundException, SQLException {
		 int resultat = 0;
		int verification = DaoPersonne.VérifierEmail(U.getLogin_personne());
		if( verification > 0 ) {
			//Different de 0 c'est à dire Déja existe 
			resultat = -1;
		}
		else {			
			//l'adresse email n'existe pas 
		int id_profil = ServiceProfil.AjouterProfil(statut);
		if(id_profil > 0) {
			int res = DaoPersonne.AjouterPersonne(U,id_profil);	
			if(res == 1) {
				//l'utilisateur bien ajouter
				resultat = res;
			}
			else {
				resultat = -2;
			}
		}
		else {
			resultat = -2;
		}
			
	}		
		
		  return resultat;	
		  
	}
	
	// Authentification d'un utilisateur
	
	public static int AuthentificationPersonne(String login, String password) throws ClassNotFoundException, SQLException {
		 int resultat ;
		int verification = DaoPersonne.VérifierEmail(login);
		if( verification > 0 ) {
			//Different de 0 c'est à dire Déja existe 
			int res = DaoPersonne.VérifierEmail_Password(login, password);
			
			if(res > 0){
				
				resultat = res;
			}
			
			else {
				//password false
				resultat = -1;
			}
			
		}
		else {			
		    //email introvable
			resultat = -2;	
		
	}		
		
		  return resultat;	
		  
	}
	

	
	public static int ModifierCoordonnéePersonne(Personne U , String login) throws ClassNotFoundException, SQLException {
		 int resultat ;
		if(login.equals(U.getLogin_personne())) {
			 resultat = DaoPersonne.modifierPersonne(U);
		 }
		 
		 else {
		 int verification = DaoPersonne.VérifierEmail(U.getLogin_personne());
		 if( verification > 0 ) {
				//email déja existe ...
				resultat = -1;
			}
			else {			
				//modifier perssonne ...
				resultat = DaoPersonne.modifierPersonne(U);	
			
	        }
		 }
         return resultat;
      }


   public static Personne ChercherPersonneViaId(int id_personne) throws ClassNotFoundException, SQLException {
	   Personne p = DaoPersonne.ChercherPersonneViaId(id_personne);
	   return p;
   }

   public static int ModifierPasswordPersonne(String password, int id_personne) throws ClassNotFoundException, SQLException {
	   return DaoPersonne.modifierPasswordPersonne(password, id_personne);
   }

   public static ArrayList<Personne> ConsulterPersonne() throws ClassNotFoundException, SQLException{
	   return DaoPersonne.ConsulterPersonne();
   }
   
   public static ArrayList<Personne> ConsulterListesUtilisateurs() throws ClassNotFoundException, SQLException{
	   return DaoPersonne.ConsulterListesUtilisateurs();
   }
   
   public static int SupprimerPersonne(int idPersonne) throws ClassNotFoundException, SQLException{
	   int idprofil = DaoPersonne.getProfileByUserId(idPersonne);
	   int res = DaoProfil.SupprimerProfil(idprofil);
	   int rs = 0;
	   if(res == 1) {
		   rs = DaoPersonne.SupprimerPersonne(idPersonne);
	   }
	   
	   return rs;
   }
   
   public static ArrayList<Personne> ConsulterListesexpert() throws ClassNotFoundException, SQLException{
	   return DaoPersonne.ConsulterListesexpert();
   }
   
   
}
