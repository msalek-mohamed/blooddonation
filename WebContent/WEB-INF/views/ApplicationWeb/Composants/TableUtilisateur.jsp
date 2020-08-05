
<%@page import="java.util.ArrayList"%>
<%@page import="models.Personne"%>
<%@page import="services.ServicePersonne"%>
<% 
ArrayList<Personne> Utilisateurs = ServicePersonne.ConsulterListesUtilisateurs(); 
 %> 
<section class="content">
        <div class="container-fluid">
            <div class="row clearfix">
                <ol class="breadcrumb breadcrumb-col-red waves-effect">
			        <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Gestion des utilisateurs</a></li>
			        <li class="active"> consulter la liste des utilisateurs</li>
                 </ol>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover js-basic-example " >
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nom</th>
                                            <th>Prenom</th>
                                            <th>e-mail</th>
                                            <th>CIN</th>
                                            <th>Date-naissance</th>
                                            <th>Tel</th>
                                            <th>Adress</th>
                                            <th style=" width: 35px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <% for (Personne p : Utilisateurs){ %>
                                        <tr>
                                            <td><%=p.getId_personne()%></td>
                                            <td><%=p.getNom_personne()%> </td>
                                            <td><%=p.getPrenom_personne()%> </td>
                                            <td><%=p.getLogin_personne()%></td>
                                            <td><%=p.getCin_personne()%></td>
                                            <td><%=p.getDate_naissance()%></td>
                                            <td><%=p.getTel_personne()%></td>
                                            <td><%=p.getAdresse_personne()%></td>
                                            <td>
                                                <i class="voir material-icons" style="cursor: pointer;color: red;">visibility</i>
                                                <i class="supp material-icons" style="cursor: pointer;color: red;">delete_forever</i>
                                            </td>
                                        </tr>
                                        <%}%>
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <script src="./Ressources/Js/ApplicationWeb/perso/admin.js"></script>