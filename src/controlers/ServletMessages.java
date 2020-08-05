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

import dao.DaoPersonne;
import models.Message;
import models.Personne;
import services.ServiceMessage;
import services.ServicePersonne;

@WebServlet({ "/visualisermessage", "/messages", "/envoyer" })
public class ServletMessages extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/views/ApplicationWeb/Pages/message.jsp").include(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operation = request.getParameter("operation");
		PrintWriter out = response.getWriter();
		if(operation.equals("supprimer")) {
			int res = 0;
			try {
				 res = ServiceMessage.SupprimerMessage(Integer.parseInt(request.getParameter("idSupp")));
			} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			out.print(res);
		}
		else if(operation.equals("envoyer")) {
			HttpSession session = request.getSession();
			Personne p = (Personne) session.getAttribute("profil");
			try {
				int verification = DaoPersonne.VérifierEmail(request.getParameter("login"));
				if(verification > 0) {
					
					Message m = new Message(request.getParameter("sujet"), request.getParameter("contenu"), p,ServicePersonne.ChercherPersonneViaId(verification));
				    int res = ServiceMessage.EnvoyerMessage(m);
				    out.print(res);
				}
				else {
					out.print(verification);
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			
		}
	}

}
