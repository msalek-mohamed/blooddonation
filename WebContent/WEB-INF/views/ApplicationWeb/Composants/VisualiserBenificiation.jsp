<%@page import="models.Beneficiation"%>
<%@page import="services.ServiceBeneficiation"%>
<% 
int idbeneficiation = Integer.parseInt(request.getParameter("idbeneficiation")); 
Beneficiation BN = ServiceBeneficiation.ChercherBeneficiationViaId(idbeneficiation);
%>
  
  
  <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <ol class="breadcrumb breadcrumb-col-red waves-effect">
                   <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Gestion des beneficiations</a></li>
                   <li class="active"> Consulter beneficiation</li>
                </ol>
            </div>

 
  <!-- Masked Input -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                      
                        <div class="body">
                            <div class="demo-masked-input">
                                <div class="row clearfix">
                                <div class="col-md-12">
                                    <div class="input-group">
                                          <label>Coordonnées bénéficier :</label>
                                    </div>
                                </div>
                                 <div class="col-md-6">
                                      <b>Nom</b>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">supervisor_account</i>
                                        </span>
                                        <div class="form-line">
                                          <label><%=BN.getBeneficier().getNom_personne()%></label>
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-md-6">
                                 <b>Prenom</b>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">person</i>
                                        </span>
                                        <div class="form-line">
                                          <label><%=BN.getBeneficier().getPrenom_personne()%></label>
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-md-6">
                                 <b>Login</b>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">email</i> 
                                        </span>
                                        <div class="form-line">
                                          <label><%=BN.getBeneficier().getLogin_personne()%></label>
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-md-6">
                                 <b>CIN</b>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">portrait</i>
                                        </span>
                                        <div class="form-line">
                                          <label><%=BN.getBeneficier().getCin_personne()%></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 ">
                                <b>Tel</b>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">call</i>
                                        </span>
                                        <div class="form-line">
                                          <label><%=BN.getBeneficier().getTel_personne()%></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 ">
                                <b>Date de naissance</b>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">cake</i>
                                        </span>
                                        <div class="form-line">
                                          <label><%=BN.getBeneficier().getDate_naissance()%></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 ">
                                <b>Adresse</b>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">location_city</i>
                                        </span>
                                        <div class="form-line">
                                            <label><%=BN.getBeneficier().getAdresse_personne()%></label>
                                        </div>
                                    </div>
                                </div> 
                                    <div class="col-md-12">
                                    <div class="input-group">
                                          <label>A propos de bénéficiation :</label>
                                    </div>
                                </div>
                                    <div class="col-md-6">
                                        <b>Quantite</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">local_drink</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=BN.getQuantite()%> g</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <b>Groupe sanguin</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">bubble_chart</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=BN.getGroupe_sangaire()%></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <b>Date du beneficiation</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">date_range</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=BN.getDate_beneficiation()%></label>
                                            </div>
                                        </div>
                                    </div>
                                    
                                   
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Masked Input -->
	</div>
</section>