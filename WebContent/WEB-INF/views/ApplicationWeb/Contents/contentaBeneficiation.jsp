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
		case beneficiations:%>
		<% switch(roleMoi){
		   case utilisateur :%>
			<%@include file="../Composants/TableBeneficiationUtilisateur.jsp" %>
		<% break;
		   case expert :%> 
		     <%@include file="../Composants/TableBeneficiation.jsp" %> 
		<% break;
			} %>
			
		<% break;		
		case beneficiation: %>
		   <%@include file="../Composants/VisualiserBenificiation.jsp" %> 	
		<% break;	
		case ajouterbeneficiation: %>
			<%@include file="../Composants/AjouterBeneficiation.jsp" %>
        <% break;
			}
		 %>