package controlers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.ServicePersonne;

/**
 * Servlet implementation class ServletUtilisateurs
 */
@WebServlet({ "/consulterutilisateur", "/visualiserutilisateur"})
public class ServletUtilisateurs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("WEB-INF/views/ApplicationWeb/Pages/utilisateur.jsp").include(request,response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String operation = request.getParameter("operation");
		PrintWriter out = response.getWriter();
		
		if(operation.equals("supprimer")) {
			int res = 0;
			try {
				 res = ServicePersonne.SupprimerPersonne(Integer.parseInt(request.getParameter("idSupp")));
			} catch (Exception e) {
				e.printStackTrace();
			}
			out.print(res);
		}
		else {
			
		}
		
	}

}
