<%@page import="tools.EnumGestion"%>
<%@page import="tools.Gestion"%>
<%@page import="models.Personne"%>
<% 
 Personne MB = (Personne) session.getAttribute("profil"); 
 Role roleMoi = MB.getRole();
 %>  

      
<%@include file="../Headers/header.jsp" %> 
<%@include file="../Composants/Menu.jsp" %>   
			 
	 <%
       String uri = request.getRequestURI();
       EnumGestion gestion = Gestion.GetGestion(uri); 
		switch(gestion){
		//consulter listes des donnations
		case donations:%>
		<% switch(roleMoi){
		//Table des donnations sans action valider
		   case utilisateur :%>
			<%@include file="../Composants/TableDonationUtilisateur.jsp" %>
		<% break;
		//Table des donnations avec action valider
		   case expert :%> 
		     <%@include file="../Composants/TableDonation.jsp" %>  
		<% break;
			} %>
			
		<% break;	
		// visualiser donnation
		case donation: %>
		   <%@include file="../Composants/VisualiserDonation.jsp" %> 		
		<% break;	
		// ajouter donnation
		case ajouterdonation: %>
			<%@include file="../Composants/AjouterDonation.jsp" %>   	
        <% break;
			}
		 %>
       
	