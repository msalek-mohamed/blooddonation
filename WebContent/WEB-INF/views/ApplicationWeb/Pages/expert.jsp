<%@page import="models.Role"%>
<%@page import="models.Personne"%>
 <% 
 Personne pr = (Personne) session.getAttribute("profil"); 
 if(pr != null){
 %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>BloodDonation | Expert </title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
    <!-- Bootstrap Core Css -->
    <link href="./Ressources/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- Waves Effect Css -->
    <link href="./Ressources/plugins/node-waves/waves.css" rel="stylesheet" />
    <!-- Animation Css -->
    <link href="./Ressources/plugins/animate-css/animate.css" rel="stylesheet" />
    <!-- Morris Chart Css-->
    <link href="./Ressources/plugins/morrisjs/morris.css" rel="stylesheet" />
    <!-- Custom Css -->
    <link href="./Ressources/Css/ApplicationWeb/style.css" rel="stylesheet">
    <link href="./Ressources/Css/ApplicationWeb/StyleBox.css" rel="stylesheet">
    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="./Ressources/Css/ApplicationWeb/themes/all-themes.css" rel="stylesheet" />
    <link href="./Ressources/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">
    <link rel="shortcut icon" href="./Ressources/images/SiteWeb/favicon.png" />
</head>
<body class="theme-red">
	<%@include file="../Contents/contentExpert.jsp" %> 
</body>

 <!-- Jquery Core Js -->
    <script src="./Ressources/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap Core Js -->
    <script src="./Ressources/plugins/bootstrap/js/bootstrap.js"></script>
    <!-- Select Plugin Js -->
    <script src="./Ressources/plugins/bootstrap-select/js/bootstrap-select.js"></script>
    <!-- Slimscroll Plugin Js -->
    <script src="./Ressources/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
    <!-- Waves Effect Plugin Js -->
    <script src="./Ressources/plugins/node-waves/waves.js"></script>
    <!-- Jquery CountTo Plugin Js -->
    <script src="./Ressources/plugins/jquery-countto/jquery.countTo.js"></script>
    <!-- Morris Plugin Js -->
    <script src="./Ressources/plugins/raphael/raphael.min.js"></script>
    <script src="./Ressources/plugins/morrisjs/morris.js"></script>
    <!-- ChartJs -->
    <script src="./Ressources/plugins/chartjs/Chart.bundle.js"></script>
    <!-- Flot Charts Plugin Js
    <script src="./Ressources/plugins/flot-charts/jquery.flot.js"></script>
    <script src="./Ressources/plugins/flot-charts/jquery.flot.resize.js"></script>
    <script src="./Ressources/plugins/flot-charts/jquery.flot.pie.js"></script>
    <script src="./Ressources/plugins/flot-charts/jquery.flot.categories.js"></script>
    <script src="./Ressources/plugins/flot-charts/jquery.flot.time.js"></script>
    <script src="./Ressources/Js/ApplicationWeb/pages/index.js"></script>-->
    <!-- Sparkline Chart Plugin Js -->
  <script src="./Ressources/plugins/jquery-sparkline/jquery.sparkline.js"></script>
    <!-- Custom Js -->
    <script src="./Ressources/Js/ApplicationWeb/admin.js"></script>
   <!-- EDITORS -->
    <!-- Demo Js -->
    <script src="./Ressources/Js/ApplicationWeb/demo.js"></script>
    <!-- Demo Js -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="./Ressources/plugins/bootstrap-select/js/bootstrap-select.js"></script>
    <script src="./Ressources/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
    <script src="./Ressources/plugins/node-waves/waves.js"></script>
    <script src="./Ressources/plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="./Ressources/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
    <script src="./Ressources/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
    <script src="./Ressources/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
    <script src="./Ressources/plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
    <script src="./Ressources/plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
    <script src="./Ressources/plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
    <script src="./Ressources/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
    <script src="./Ressources/plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>
    <script src="./Ressources/Js/ApplicationWeb/pages/tables/jquery-datatable.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="./Ressources/Js/ApplicationWeb/perso/expert.js"></script>
</html>
<%} else {
	request.getServletContext().getRequestDispatcher("/authentification").forward(request, response);
 }
%>