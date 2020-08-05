<%@page import="services.ServiceBeneficiation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Beneficiation"%>
<% 
 ArrayList<Beneficiation> dd = ServiceBeneficiation.ConsulterBeneficiationNovalide();
 %> 

<section class="content">
        <div class="container-fluid">
            <div class="row clearfix">
               <ol class="breadcrumb breadcrumb-col-red waves-effect">
		          <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Gestion des beneficiations</a></li>
	              <li class="active"> consulter la liste des beneficiations</li>
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
                                            <th>Cin beneficier</th>
                                            <th>Tel beneficier</th>
                                            <th>Quantite</th>
                                            <th>Groupe sanguin</th>
                                            <th>Date beneficiation</th>
                                            <th style=" width: 40px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%for(Beneficiation d : dd){%>    
                                        <tr>
	                                            <td><%=d.getId_beneficiation()%></td>
	                                            <td><%=d.getBeneficier().getNom_personne()%> <%=d.getBeneficier().getPrenom_personne()%></td>
	                                            <td><%=d.getBeneficier().getCin_personne()%></td>
	                                            <td><%=d.getBeneficier().getTel_personne()%></td>
	                                            <td><%=d.getQuantite()%> g</td>
	                                            <td><%=d.getGroupe_sangaire()%></td>
	                                            <td><%=d.getDate_beneficiation()%></td>
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
 
 
 <script src="./Ressources/Js/ApplicationWeb/beneficiation.js"></script>
