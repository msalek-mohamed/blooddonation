<%@page import="tools.EnumGestion"%>
<%@page import="tools.Gestion"%>


<%@include file="../Headers/header.jsp" %> 
<%@include file="../Composants/Menu.jsp" %> 

<%
       String uri = request.getRequestURI();
       EnumGestion gestion = Gestion.GetGestion(uri); 
		
       switch(gestion){
		case consulterexpert:%>
            <%@include file="../Composants/TableExpert.jsp" %> 
		<% break;		
		case visualiserexpert: %>
			<%@include file="../Composants/VisualiserExpert.jsp" %> 			
		<% break;	
		case ajouterexpert: %>
			<%@include file="../Composants/AjouterExpert.jsp" %>    	
        <% break;
			}
		 %>