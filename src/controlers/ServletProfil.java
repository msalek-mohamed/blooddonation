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

@WebServlet({ "/profil", "/changer", "/modifiercoordonnee" })
public class ServletProfil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/views/ApplicationWeb/Pages/profil.jsp").include(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operation = request.getParameter("operation");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		if(operation.equals("changer")) {
			int resultat = 0;
			Personne p = (Personne) session.getAttribute("profil");
			System.out.println(p);
			if(p.getPassword_personne().equals(request.getParameter("AncienPassword"))) {
				try {
					resultat = ServicePersonne.ModifierPasswordPersonne(request.getParameter("NouveauPassword"),p.getId_personne());
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if(resultat == 1) {
					try {
						int id_per = p.getId_personne();
						p = ServicePersonne.ChercherPersonneViaId(id_per);
						session.setAttribute("profil", p);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					 
				}
			}
			
			out.print(resultat);
		}
		else if(operation.equals("Modifier_Coordonnee")) {
			Personne p = (Personne) session.getAttribute("profil");
			int resultat = 0;
			if(p.getPassword_personne().equals(request.getParameter("password"))) {				
				Personne NouveauPersonne = new Personne(p.getId_personne(), request.getParameter("nom"), request.getParameter("prenom"), request.getParameter("login"), p.getPassword_personne(), request.getParameter("cin"), request.getParameter("tel"), request.getParameter("adress"), p.getDate_naissance(), p.getProfil(), p.getRole(), null,"");
				try {
					 resultat = ServicePersonne.ModifierCoordonnéePersonne(NouveauPersonne, p.getLogin_personne());
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			    if(resultat == 1) {
			    	 try {
			    		 int id_per = p.getId_personne();
						  p = ServicePersonne.ChercherPersonneViaId(id_per);
						 session.setAttribute("profil", p);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			    
			    }
			    
			}
			else {
				resultat = -2;
			}
			out.print(resultat); 
		}
        
		else {
           //			 
		}
		
	}

}
