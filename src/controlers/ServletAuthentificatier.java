package controlers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Personne;
import services.ServicePersonne;

/**
 * Servlet implementation class ServletAuthentificatier
 */
@WebServlet("/authentification")
public class ServletAuthentificatier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	   
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.getRequestDispatcher("WEB-INF/views/SiteWeb/Pages/Authentification.jsp").include(request,response);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			PrintWriter out = response.getWriter();
			String login_Auth    = request.getParameter("login");
			String password_Auth = request.getParameter("password");
			int resultat =0;
			Personne p= null;
			try {
				 resultat = ServicePersonne.AuthentificationPersonne(login_Auth, password_Auth);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			if(resultat>0) {
				
				try {
					p = ServicePersonne.ChercherPersonneViaId(resultat);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
				HttpSession session = request.getSession();
				session.setAttribute("profil", p);
				out.print(p.getRole());	
			}
			else if(resultat == -1) {
				out.print("password");
			}
			else {
				out.print("email");
			}
		}

}
