package tools;

public class Gestion {
   public static EnumGestion GetGestion(String uri){
	   String   gestion= ((String[])uri.split("/"))[2];
	   EnumGestion res = null;
	   //Gestion Profil	   
	   if(gestion.equals("profil")) {
		 res = EnumGestion.profil;
	   }
	   else if(gestion.equals("changer")) {
		 res = EnumGestion.changer;
	   }
	   else if(gestion.equals("modifiercoordonnee")) {
			 res = EnumGestion.modifiercoordonnee;
		   }
	   //Gestion messages
	   else if(gestion.equals("messages")) {
			 res = EnumGestion.messages;
		   }
	   else if(gestion.equals("visualisermessage")) {
			 res = EnumGestion.visualisermessage;
		   }
	   else if(gestion.equals("envoyer")) {
			 res = EnumGestion.envoyer;
		   }
	   //Gestion expert
	   else if(gestion.equals("ajouterexpert")) {
			 res = EnumGestion.ajouterexpert;
		   }
	   else if(gestion.equals("consulterexpert")) {
			 res = EnumGestion.consulterexpert;
		   }
	   else if(gestion.equals("visualiserexpert")) {
			 res = EnumGestion.visualiserexpert;
		   }
	   //Gestion utilisateur
	   else if(gestion.equals("consulterutilisateur")) {
			 res = EnumGestion.consulterutilisateur;
		   }
	   else if(gestion.equals("visualiserutilisateur")) {
			 res = EnumGestion.visualiserutilisateur;
		   }
	  //Gestion donation
	   else if(gestion.equals("donation")) {
			 res = EnumGestion.donation;
		   }
	   else if(gestion.equals("ajouterdonation")) {
			 res = EnumGestion.ajouterdonation;
		   }
	   else if(gestion.equals("donations")) {
			 res = EnumGestion.donations;
		   }
	 //Gestion beneficiation
	   else if(gestion.equals("beneficiation")) {
			 res = EnumGestion.beneficiation;
		   }
	   else if(gestion.equals("ajouterbeneficiation")) {
			 res = EnumGestion.ajouterbeneficiation;
		   }
	   else if(gestion.equals("beneficiations")) {
			 res = EnumGestion.beneficiations;
		   }
	 //Gestion affectation
	   else if(gestion.equals("affectation")) {
			 res = EnumGestion.affectation;
		   }
	   else if(gestion.equals("chercher")) {
			 res = EnumGestion.chercher;
		   }
	   else if(gestion.equals("affectations")) {
		     res = EnumGestion.affectations; 
	   }
	 //Accueil
	   else if(gestion.equals("accueil")) {
			 res = EnumGestion.accueil;
		   }
	   else if(gestion.equals("statistique")) {
			 res = EnumGestion.statistique;
		   }
	   else {
		   res = EnumGestion.erreur;
	   }
	   return res;
   }
}
