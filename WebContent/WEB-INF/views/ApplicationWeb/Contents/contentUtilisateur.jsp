<%@page import="tools.Gestion"%>
<%@page import="tools.EnumGestion"%>



<%@include file="../Headers/header.jsp" %> 
<%@include file="../Composants/Menu.jsp" %> 


   <%
       String uri = request.getRequestURI();
       EnumGestion gestion = Gestion.GetGestion(uri); 
		
       switch(gestion){
		case consulterutilisateur:%>
			<%@include file="../Composants/TableUtilisateur.jsp" %> 
		<% break;		
		case visualiserutilisateur: %>
			<%@include file="../Composants/VisualiserUtilisateur.jsp" %> 			
		<% break;	
			}
		 %>