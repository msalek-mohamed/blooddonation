package controlers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Personne;
import models.Role;
import services.ServicePersonne;

/**
 * Servlet implementation class ServletInscription
 */
@WebServlet("/inscription")
public class ServletInscription extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/views/SiteWeb/Pages/Inscription.jsp").include(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String date = request.getParameter("date");
		String[] CompDate = date.split("-");
		Date DN = new Date((Integer.parseInt(CompDate[0])-1900), (Integer.parseInt(CompDate[1])-1),Integer.parseInt(CompDate[2]));		
		Personne p = new Personne(request.getParameter("nom"), request.getParameter("prenom"), request.getParameter("login"), request.getParameter("password"), request.getParameter("cin"), request.getParameter("tel"), request.getParameter("adresse"), DN, null, Role.utilisateur, null, request.getParameter("sex"));
		int res = 0;
		try {
			res = ServicePersonne.AjouterPersonne(p, 1);
			//traitement authentification et session
			if(res == 1) {
				int resultat = ServicePersonne.AuthentificationPersonne(request.getParameter("login"), request.getParameter("password"));
			    if(resultat>0) {
			    	Personne pr = ServicePersonne.ChercherPersonneViaId(resultat);
					HttpSession session = request.getSession();
					session.setAttribute("profil", pr);
			    }
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.print(res);
	}

}
