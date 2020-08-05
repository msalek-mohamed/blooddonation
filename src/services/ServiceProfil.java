package services;

import java.sql.SQLException;
import dao.DaoProfil;
import models.Profil;

public class ServiceProfil {
	
	public static Profil ConsulterProfil(int id_profil) throws ClassNotFoundException, SQLException {

		Profil pr = null;
		pr = DaoProfil.ConsulterProfil(id_profil);
		
		return pr;
	}
	
	
	public static int AjouterProfil(int statut) throws ClassNotFoundException, SQLException {
		
		int res = DaoProfil.AjouterProfil(statut);
		if(res == 1) {
		   return DaoProfil.LastProfil();
		}
		
		else {
			return -1;
		}
		
		}
	
	
	public static int ModifierProfil(Profil p) throws ClassNotFoundException, SQLException {
		return DaoProfil.ModifierProfil(p);
	}

	public static int ChangerEtatProfil(int idProfil, int statut) throws ClassNotFoundException, SQLException {
		return DaoProfil.ChangerEtatProfil(idProfil, statut);
	}	

	
}
	



