<%@page import="models.Role"%>
<%@page import="models.Personne"%>

<%@include file="../Headers/header.jsp" %> 
<%@include file="../Composants/Menu.jsp" %>
<% 
   Personne MonProfil = (Personne) session.getAttribute("profil"); 
   Role Role = MonProfil.getRole();
%>

<%
		
       switch(role){
		case expert :%>
            <%@include file="../Composants/StatistiqueAdmin.jsp" %> 
		<% break;		
		case  admin : %>
			<%@include file="../Composants/StatistiqueAdmin.jsp" %> 			
		<% break;
		case  utilisateur : %>
        <%@include file="../Composants/Accueil.jsp" %> 
 	    <% break;
			}
		 %>
