<%@page import="models.Role"%>
<%@page import="models.Personne"%>
 <% 
 
 Personne p = (Personne) session.getAttribute("profil"); 
 if(p == null){

 %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="iso-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Inscription </title>
    

    <!-- Font Icon -->
     <link rel="stylesheet" href="./Ressources/fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="./Ressources/bootstrap\css\bootstrap.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="./Ressources/Css/SiteWeb/style3.css">
    <link rel="shortcut icon" href="./Ressources/images/SiteWeb/favicon.png" />
</head>
<body>

    <div class="main">

       <%@include file="../Contents/ContentInscription.jsp" %>        
        
    </div>

    <!-- JS -->
    <script src="./Ressources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
    <script src="./Ressources/vendor/jquery/jquery.min.js"></script>
    <script src="./Ressources/Js/SiteWeb/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
    
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