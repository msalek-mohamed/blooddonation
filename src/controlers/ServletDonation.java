package controlers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Donation;
import models.Personne;
import services.ServiceDonation;

@WebServlet({ "/donations", "/donation", "/ajouterdonation" })
public class ServletDonation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/views/ApplicationWeb/Pages/donation.jsp").include(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operation = request.getParameter("operation");
		PrintWriter out = response.getWriter();
		if(operation.equals("AnnulerDonation")) {
			int res = 0;
			try {
				 res = ServiceDonation.AnnulerDonation(Integer.parseInt(request.getParameter("idDonation")));
				
			} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.print(res);
		}
		else if(operation.equals("ValiderDonation")) {
			int res = 0;
			try {
				res = ServiceDonation.ValiderDonation(Integer.parseInt(request.getParameter("idDonation")));
			} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.print(res);
		}
		else if(operation.equals("supprimerDonation"))  {
			int res = 0;
			try {
				res = ServiceDonation.SupprimerDonation(Integer.parseInt(request.getParameter("idDonation")));
			} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.print(res);
		}
		else if(operation.equals("AjouterDonation"))  {
			int res = 0;
			try {
				HttpSession session = request.getSession();
				Personne donneur = (Personne) session.getAttribute("profil");
				Donation d = new Donation(Float.parseFloat(request.getParameter("poids")), Float.parseFloat(request.getParameter("taille")), request.getParameter("groupSang"), donneur, 0);				
				res = ServiceDonation.AjouterDonation(d);
			} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.print(res);
		}
		else {
			
		}
	}

}
