<%@page import="tools.EnumGestion"%>
<%@page import="tools.Gestion"%>
    


<%@include file="../Headers/header.jsp" %> 
<%@include file="../Composants/Menu.jsp" %> 


       <%
       String uri = request.getRequestURI();
       EnumGestion gestion = Gestion.GetGestion(uri); 
		switch(gestion){
		case chercher:%>
			<%@include file="../Composants/ChercherAffectation.jsp" %> 
		<% break;		
		case affectation: %>
			<%@include file="../Composants/affectation.jsp" %>
		<% break;  
		case affectations: %>
			<%@include file="../Composants/Tableaffectation.jsp" %> 
        <% break;
			}
		 %>

