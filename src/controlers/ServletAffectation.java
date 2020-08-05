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

import models.Affectation;
import models.Beneficiation;
import models.Donation;
import models.Personne;
import services.ServiceAffectation;

@WebServlet({ "/chercher", "/affectation" , "/affectations" })
public class ServletAffectation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/views/ApplicationWeb/Pages/affectation.jsp").include(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operation = request.getParameter("operation");
		PrintWriter out = response.getWriter();
		if(operation.equals("affecter")) {
			HttpSession session = request.getSession();
			Personne expert = (Personne) session.getAttribute("profil");			
			Beneficiation b = new Beneficiation(Integer.parseInt(request.getParameter("idBeneficiation")));
			Donation d = new Donation(Integer.parseInt(request.getParameter("idDonation")));
			Affectation a = new Affectation(d, b, expert);
		    try {
				int res = ServiceAffectation.AjouterAffectation(a);
				out.print(res);
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}
		else {
			
		}
	}

}
