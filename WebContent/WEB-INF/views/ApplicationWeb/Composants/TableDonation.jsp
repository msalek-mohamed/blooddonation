<%@page import="services.ServiceDonation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Donation"%>

<% 
 ArrayList<Donation> dd = ServiceDonation.ConsulterDonationNovalide();
 %> 

<section class="content">
        <div class="container-fluid">
            <div class="row clearfix">
               <ol class="breadcrumb breadcrumb-col-red waves-effect">
		          <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Gestion des donations</a></li>
	              <li class="active"> consulter la liste des donations</li>
                </ol>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover js-basic-example " >
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nom donneur</th>
                                            <th>Cin donneur</th>
                                            <th>Tel donneur</th>
                                            <th>Poids donneur</th>
                                            <th>Taille donneur</th>
                                            <th>Groupe sanguin</th>
                                            <th>Date donation</th>
                                            <th style=" width: 30px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%for(Donation d : dd){%>    
                                        <tr>
                                            <td><%=d.getId_donation()%></td>
                                            <td><%=d.getDonneur().getNom_personne()%> <%=d.getDonneur().getPrenom_personne()%></td>
                                            <td><%=d.getDonneur().getCin_personne()%></td>
                                            <td><%=d.getDonneur().getTel_personne()%></td>
                                            <td><%=d.getPoids_donneur()%> Kg</td>
                                            <td><%=d.getTaille_donneur()%> m</td>
                                            <td><%=d.getGroupe_sangaire()%></td>
                                            <td><%=d.getDate_donation()%></td>
                                            <td>
                                                <i class="valide material-icons" style="cursor: pointer;color: red; font-size: 17px;">done_all</i>
                                                <i class="supp material-icons" style="cursor: pointer;color: red; font-size: 17px;">clear</i>
                                                <i class="voir material-icons" style="cursor: pointer;color: red; font-size: 17px;">visibility</i>
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
 
 <script src="./Ressources/Js/ApplicationWeb/donation.js"></script>