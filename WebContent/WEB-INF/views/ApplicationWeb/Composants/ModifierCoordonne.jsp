<%@page import="models.Personne"%>
<% 
 Personne Moi2 = (Personne) session.getAttribute("profil"); 

 %> 

  <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <ol class="breadcrumb breadcrumb-col-red waves-effect">
                   <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Profil</a></li>
                   <li class="active"> Modifier mes coordonnées</li>
                </ol>
            </div>

 
  <!-- Masked Input -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                      
                        <div class="body">
                            <div class="demo-masked-input">
                                <div class="row clearfix">
                                 <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12" >
	                                        <img class="img-responsive thumbnail" src="./Ressources/images/ApplicationWeb/Profil/<%=Moi2.getProfil().getUrl_image()%>" style="height: 357px">        
                                	</div>
                                    <div class="col-md-3">
                                        <b>Nom</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">account_circle</i>
                                            </span>
                                            <div class="form-line error">
                                                <input type="text" class="form-control date" value="<%=Moi2.getNom_personne()%>" id="nomnew" placeholder="Ex: votre nom" onblur="validateNom()">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <b>Prenom</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">perm_identity</i>
                                            </span>
                                            <div class="form-line error">
                                                <input type="text" value="<%=Moi2.getPrenom_personne()%>" class="form-control time24" id="prenomnew" placeholder="Ex: votre prenom" onblur="validatePrenom()">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <b>Email</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">mail_outline</i>
                                            </span>
                                            <div class="form-line error">
                                                <input type="text" value="<%=Moi2.getLogin_personne()%>" class="form-control time12" id="loginnew" placeholder="Ex: votre adresse mail" onblur="validateEmail()">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <b>Tele</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">phone</i>
                                            </span>
                                            <div class="form-line error">
                                                <input type="text" value="<%=Moi2.getTel_personne()%>" id="telnew" class="form-control datetime" placeholder="Ex: numero de telephone" onblur="validateTel()">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <b>Date de naissance</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">date_range</i>
                                            </span>
                                            <div class="form-line error">
                                                <input type="text" value="<%=Moi2.getDate_naissance()%>" id="datenaissancenew" class="form-control mobile-phone-number" placeholder="Ex: jour/mois/annee" onblur="validateDateDeNaissance()">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <b>CIN</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">location_on</i>
                                            </span>
                                            <div class="form-line error">
                                                <input type="text" value="<%=Moi2.getCin_personne()%>" id="cinnew" class="form-control mobile-phone-number" placeholder="Ex: CIN" onblur="validateCin()">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <b>Adresse</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">location_on</i>
                                            </span>
                                            <div class="form-line error">
                                                <input type="text" value="<%=Moi2.getAdresse_personne()%>" id="adressenew" class="form-control mobile-phone-number" placeholder="Ex: adresse compLete" onblur="validateAdress()">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <b>Mot de passe</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">https</i>
                                            </span>
                                            <div class="form-line error">
                                                <input type="password"  id="password" class="form-control mobile-phone-number" placeholder="votre mot de passe" onblur="validatePassword()">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                     	<button class="btn btn-danger btn-block"  id="enregistrer" onclick="EnregistrerCoordonnee()">
								            Enregistrer
								        </button>
                                    </div> 
                                    <div class="col-md-2">
                                     	<button class="btn btn-default btn-block"  id="annuler" onclick="annuler()">
								            Annuler
								         </button>
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