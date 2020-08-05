<%@page import="models.Personne"%>
<%@page import="services.ServiceDonation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Donation"%>

<% 
 Personne me = (Personne)session.getAttribute("profil");
 ArrayList<Donation> donation = ServiceDonation.ChercherDonationViaIdDonneur(me.getId_personne());
 %> 

<section class="content">
        <div class="container-fluid">
            <div class="row clearfix">
               <ol class="breadcrumb breadcrumb-col-red waves-effect">
		          <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Gestion des donations</a></li>
	              <li class="active"> Mes donations</li>
                </ol>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover js-basic-example " >
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Poids</th>
                                            <th>Taille</th>
                                            <th>Groupe sanguin</th>
                                            <th>Etat donation</th>
                                            <th>Date</th>
                                            <th style=" width: 30px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%for(Donation d : donation){%>    
                                        <tr>
                                            <td><%=d.getId_donation()%></td>
                                            <td><%=d.getPoids_donneur()%> Kg</td>
                                            <td><%=d.getTaille_donneur()%> m</td>
                                            <td><%=d.getGroupe_sangaire()%></td>
                                            <%if(d.getEtat_donation() == 1){%>
	                                         <td style="color: green; font-weight: bold;" > Valider </td>
	                                         <%} else if(d.getEtat_donation() == -1){%>
	                                          <td style="color: red; font-weight: bold;" > Annuler </td>
	                                          <%} else {%>
	                                          <td style="color: orange; font-weight: bold;" > En cours de traitement </td>
	                                          <%}%>
                                            <td><%=d.getDate_donation()%></td>
                                            <td>
                                                <i class="supp material-icons" style="cursor: pointer;color: red; ">delete_forever</i>
                                                <i class="voir material-icons" style="cursor: pointer;color: red; ">visibility</i>
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
 
 
 
 
<script src="./Ressources/Js/ApplicationWeb/donationUtilisateur.js"></script>
