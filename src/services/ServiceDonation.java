package services;

import java.sql.SQLException;
import java.util.ArrayList;
import dao.DaoDonation;
import models.Donation;

public class ServiceDonation {
	public static int AjouterDonation(Donation d) throws ClassNotFoundException, SQLException {
		return DaoDonation.AjouterDonation(d);
	}
	
	public static ArrayList<Donation> ConsulterDonation() throws ClassNotFoundException, SQLException {
		return DaoDonation.ConsulterDonation();
	}
	
	
	public static ArrayList<Donation> ConsulterDonationNovalide() throws ClassNotFoundException, SQLException {
          return DaoDonation.ConsulterDonationNovalide();
	}
	
	public static Donation ChercherDonationViaId(int id) throws ClassNotFoundException, SQLException {
		return DaoDonation.ChercherDonationViaId(id);
	}
	
	public static int ValiderDonation(int id) throws ClassNotFoundException, SQLException {
	     return DaoDonation.ChangerEtatDonation(id, 1);
	 }
	
	public static int AnnulerDonation(int id) throws ClassNotFoundException, SQLException {
		return DaoDonation.ChangerEtatDonation(id, -1);
	 }
	
	public static int SupprimerDonation(int id) throws ClassNotFoundException, SQLException {
		return DaoDonation.SupprimerDonation(id); 
	}

	public static ArrayList<Donation> ChercherDonationViaIdDonneur(int id) throws ClassNotFoundException, SQLException {
		return DaoDonation.ChercherDonationViaIdDonneur(id);
	}

	public static ArrayList<Donation> ChercherDonationViaGroupSang(String GroupSanguin) throws ClassNotFoundException, SQLException {
		return DaoDonation.ChercherDonationViaGroupSang(GroupSanguin);
	}
	
}
