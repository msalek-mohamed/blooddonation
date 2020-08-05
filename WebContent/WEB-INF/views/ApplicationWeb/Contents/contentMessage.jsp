<%@page import="tools.EnumGestion"%>
<%@page import="tools.Gestion"%>
    


<%@include file="../Headers/header.jsp" %> 
<%@include file="../Composants/Menu.jsp" %> 


       <%
       String uri = request.getRequestURI();
       EnumGestion gestion = Gestion.GetGestion(uri); 
		switch(gestion){
		case messages:%>
			<%@include file="../Composants/ListesMessages.jsp" %> 
		<% break;		
		case visualisermessage: %>
			<%@include file="../Composants/VisualiserMessage.jsp" %> 			
		<% break;	
		case envoyer: %>
			<%@include file="../Composants/EnvoyerMessage.jsp" %>    	
        <% break;
			}
		 %>

		 