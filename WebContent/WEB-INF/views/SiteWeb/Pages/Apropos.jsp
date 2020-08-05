<%@page import="models.Role"%>
<%@page import="models.Personne"%>
 <% 
 
 Personne p = (Personne) session.getAttribute("profil"); 
 if(p == null){

 %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="ISO-8859-1">
<title>A propos de nous</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
    <link rel="shortcut icon" href="./Ressources/images/SiteWeb/favicon.png" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    <!-- The styles -->
    <link rel="stylesheet" href="./Ressources/Css/SiteWeb/bootstrap.min.css" />
    <link href="./Ressources/Css/SiteWeb/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="./Ressources/Css/SiteWeb/animate.css" rel="stylesheet" type="text/css">
    <link href="./Ressources/Css/SiteWeb/owl.carousel.css" rel="stylesheet" type="text/css">
    <link href="./Ressources/Css/SiteWeb/venobox.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="./Ressources/Css/SiteWeb/styles.css" />  
</head>
<body>
 <!--  HEADER -->
<%@include file="../Headers/HeaderAvantAuth.jsp" %>
<%@include file="../Contents/ContentApropos.jsp" %>
<%@include file="../Footers/FooterAvantAuth.jsp" %>


    <!-- Back To Top Button  -->

    <script src="./Ressources/Js/SiteWeb/jquery.min.js"></script>
    <script src="./Ressources/Js/SiteWeb/bootstrap.min.js"></script>
    <script src="./Ressources/Js/SiteWeb/wow.min.js"></script>
    <script src="./Ressources/Js/SiteWeb/jquery.backTop.min.js "></script>
    <script src="./Ressources/Js/SiteWeb/waypoints.min.js"></script>
    <script src="./Ressources/Js/SiteWeb/waypoints-sticky.min.js"></script>
    <script src="./Ressources/Js/SiteWeb/owl.carousel.min.js"></script>
    <script src="./Ressources/Js/SiteWeb/jquery.stellar.min.js"></script>
    <script src="./Ressources/Js/SiteWeb/jquery.counterup.min.js"></script>
    <script src="./Ressources/Js/SiteWeb/venobox.min.js"></script>
    <script src="./Ressources/Js/SiteWeb/custom-scripts.js"></script>
</body>
</html>

<%} else{
	
	if(p.getRole().equals(Role.utilisateur))
	{
	  request.getServletContext().getRequestDispatcher("/utilisateur").forward(request, response);
	}
	
	else if(p.getRole().equals(Role.expert)) {
		request.getServletContext().getRequestDispatcher("/statistique").forward(request, response);
	}
	
	else {
		request.getServletContext().getRequestDispatcher("/statistique").forward(request, response);
	}
} 

%>