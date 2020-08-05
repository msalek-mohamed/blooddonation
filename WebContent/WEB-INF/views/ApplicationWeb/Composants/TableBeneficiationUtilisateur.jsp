<%@page import="models.Personne"%>
<%@page import="services.ServiceBeneficiation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Beneficiation"%>

<%  
 Personne mee = (Personne)session.getAttribute("profil");
 ArrayList<Beneficiation> beneficiation = ServiceBeneficiation.ChercherBeneficiationViaIdBeneficier(mee.getId_personne());
 %> 

<section class="content">
        <div class="container-fluid">
            <div class="row clearfix">
               <ol class="breadcrumb breadcrumb-col-red waves-effect">
		          <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Gestion des beneficiations</a></li>
	              <li class="active"> Mes beneficiations</li>
                </ol>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover js-basic-example " >
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Quantite</th>
                                            <th>Groupe sanguin</th>
                                            <th>Etat beneficiation</th>
                                            <th>Date</th>
                                            <th style=" width: 40px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%for(Beneficiation d : beneficiation){%>    
                                        <tr>
	                                            <td><%=d.getId_beneficiation()%></td>
	                                            <td><%=d.getQuantite()%> g</td>
	                                            <td><%=d.getGroupe_sangaire()%></td>
	                                            <%if(d.getEtat_beneficiation() == 1){%>
	                                            <td style="color: green; font-weight: bold;" > Valider </td>
	                                            <%} else if(d.getEtat_beneficiation() == -1){%>
	                                            <td style="color: red; font-weight: bold;" > Annuler </td>
	                                            <%} else {%>
	                                            <td style="color: orange; font-weight: bold;" > En cours de traitement </td>
	                                            <%}%>
	                                            <td><%=d.getDate_beneficiation()%></td>
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
 

<script src="./Ressources/Js/ApplicationWeb/beneficiationUtilisateur.js"></script>