<%@page import="tools.EnumGestion"%>
<%@page import="tools.Gestion"%>
    


<%@include file="../Headers/header.jsp" %> 
<%@include file="../Composants/Menu.jsp" %> 


       <%
       String uri = request.getRequestURI();
       EnumGestion gestion = Gestion.GetGestion(uri); 
		switch(gestion){
		case profil:%>
			<%@include file="../Composants/ConsulterProfil.jsp" %> 
		<% break;		
		case changer: %>
			<%@include file="../Composants/ChnagerMotDePass.jsp" %> 
		<% break;	
		case modifiercoordonnee: %>
			<%@include file="../Composants/ModifierCoordonne.jsp" %>    	
        <% break;
			}
		 %>

