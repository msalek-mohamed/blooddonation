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

import models.Beneficiation;
import models.Personne;
import services.ServiceBeneficiation;


/**
 * Servlet implementation class ServletBeneficiation
 */
@WebServlet({ "/beneficiation", "/beneficiations" , "/ajouterbeneficiation" })
public class ServletBeneficiation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/views/ApplicationWeb/Pages/Beneficiation.jsp").include(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operation = request.getParameter("operation");
		PrintWriter out = response.getWriter();
		if(operation.equals("AnnulerBeneficiation")) {
			int res = 0;
			try {
				 res = ServiceBeneficiation.AnnulerBeneficiation(Integer.parseInt(request.getParameter("idbeneficiation")));
				
			} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.print(res);
		}
		else if(operation.equals("ValiderBeneficiation")) {
			int res = 0;
			try {
				res = ServiceBeneficiation.ValiderBeneficiation(Integer.parseInt(request.getParameter("idbeneficiation")));
			} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.print(res);
		}
		else if(operation.equals("supprimerBeneficiation")) {
			int res = 0;
			try {
				res = ServiceBeneficiation.SupprimerBeneficiation(Integer.parseInt(request.getParameter("idbeneficiation")));
			} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.print(res);
		}
		else if(operation.equals("ajouterBeneficiation")) {
			int res = 0;
			try {
				HttpSession session = request.getSession();
				Personne beneficier = (Personne) session.getAttribute("profil");
				Beneficiation b = new Beneficiation(request.getParameter("groupSang"), Integer.parseInt(request.getParameter("quantite")), beneficier);
				res = ServiceBeneficiation.AjouterBeneficiation(b);
				
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
