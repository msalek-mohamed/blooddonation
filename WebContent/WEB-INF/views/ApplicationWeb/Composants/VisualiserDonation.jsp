<%@page import="models.Donation"%>
<%@page import="services.ServiceDonation"%>
<% 
int idDonation = Integer.parseInt(request.getParameter("idDonation")); 
Donation DN = ServiceDonation.ChercherDonationViaId(idDonation);
%>
   
  <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <ol class="breadcrumb breadcrumb-col-red waves-effect">
                   <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Gestion des donations</a></li>
                   <li class="active"> Consulter donation</li>
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
                                          <label>Coordonnées donation :</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                      <b>Nom</b>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">supervisor_account</i>
                                        </span>
                                        <div class="form-line">
                                          <label><%=DN.getDonneur().getNom_personne()%></label>
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
                                          <label><%=DN.getDonneur().getPrenom_personne()%></label>
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
                                          <label><%=DN.getDonneur().getLogin_personne()%></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                <b>Mot de passe</b>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">vpn_key</i> 
                                        </span>
                                        <div class="form-line">
                                          <label><%=DN.getDonneur().getTel_personne()%></label>
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
                                          <label><%=DN.getDonneur().getCin_personne()%></label>
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
                                          <label><%=DN.getDonneur().getTel_personne()%></label>
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
                                          <label><%=DN.getDonneur().getDate_naissance()%></label>
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
                                            <label><%=DN.getDonneur().getAdresse_personne()%></label>
                                        </div>
                                    </div>
                                </div> 
                                <div class="col-md-12">
                                    <div class="input-group">
                                          <label>A propos de donation :</label>
                                    </div>
                                </div>
                                    <div class="col-md-6">
                                        <b>Poids du donneur</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">fitness_center</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=DN.getPoids_donneur()%> Kg</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <b>Taille du donneur</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">vertical_align_top</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=DN.getTaille_donneur()%> m</label>
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
                                                <label><%=DN.getGroupe_sangaire()%></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <b>Date du donation</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">date_range</i>
                                            </span>
                                            <div class="form-line">
                                                <label><%=DN.getDate_donation()%></label>
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