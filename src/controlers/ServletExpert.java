package controlers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Personne;
import models.Role;
import services.ServicePersonne;

/**
 * Servlet implementation class ServletExpert
 */
@WebServlet({ "/consulterexpert", "/visualiserexpert", "/ajouterexpert" })
public class ServletExpert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/views/ApplicationWeb/Pages/expert.jsp").include(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
			
			DateFormat df=new SimpleDateFormat("dd-MMM-yy");
			String d = request.getParameter("date");
			Date date=null;
			try {
				date = (Date) df.parse(d);
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			Personne u = new Personne(request.getParameter("nom"),request.getParameter("prenom"),request.getParameter("login"),request.getParameter("password"),request.getParameter("cin"),request.getParameter("tel"),request.getParameter("adresse"),date,null,Role.expert,null,"");
		      try {
		    	  
				int resultat = ServicePersonne.AjouterPersonne(u,1);
				out.print(resultat);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			
			
		}
		
	}
	}

}
