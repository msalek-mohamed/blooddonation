<%@page import="services.ServiceAffectation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Affectation"%>
<% 
 ArrayList<Affectation> affectations = ServiceAffectation.ConsulterAffectation();
 %>
 
<section class="content">
        <div class="container-fluid">
            <div class="row clearfix">
               <ol class="breadcrumb breadcrumb-col-red waves-effect">
		          <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Gestion des affectations </a></li>
	              <li class="active"> Consulter la liste des affectations</li>
                </ol>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover js-basic-example " >
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nom beneficier</th>
                                            <th>Nom donneur</th>
                                            <th>Nom expert</th>
                                            <th>Groupe sanguin</th>
                                            <th>Date affectation</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%for(Affectation Af : affectations){%>    
                                        <tr>
	                                            <td><%=Af.getId_affectation()%></td>
	                                            <td><%=Af.getBeneficiation().getBeneficier().getNom_personne()%> <%=Af.getBeneficiation().getBeneficier().getPrenom_personne()%></td>
	                                            <td><%=Af.getDonnation().getDonneur().getNom_personne()%> <%=Af.getDonnation().getDonneur().getPrenom_personne()%></td>
	                                            <td><%=Af.getExpert().getNom_personne()%> <%=Af.getExpert().getPrenom_personne()%></td>
	                                            <td><%=Af.getDonnation().getGroupe_sangaire()%></td>
	                                            <td><%=Af.getDate_affectation()%></td>
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
 
 
 