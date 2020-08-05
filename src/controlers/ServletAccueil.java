package controlers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Personne;


@WebServlet({ "/accueil", "/statistique" })
public class ServletAccueil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Personne p = (Personne) session.getAttribute("profil");
		if(p != null) {
			request.getRequestDispatcher("WEB-INF/views/ApplicationWeb/Pages/Accueil.jsp").include(request,response);
		}
		else {
			request.getRequestDispatcher("WEB-INF/views/SiteWeb/Pages/Accueil.jsp").include(request,response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
