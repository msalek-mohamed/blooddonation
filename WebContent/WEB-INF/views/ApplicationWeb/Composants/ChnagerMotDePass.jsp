<%@page import="models.Personne"%>
<% 
 Personne Moi1 = (Personne) session.getAttribute("profil"); 

 %>  
   
  <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <ol class="breadcrumb breadcrumb-col-red waves-effect">
                   <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Profil</a></li>
                   <li class="active"> Changer mot de passe</li>
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
	                                        <img class="img-responsive thumbnail" src="./Ressources/images/ApplicationWeb/Profil/<%=Moi1.getProfil().getUrl_image()%>" style="height: 333px">
                                	</div>
                                    <div class="col-md-5">
                                        <b>Saisir l'ancien Mot de passe: </b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">https</i>
                                            </span>
                                            <div class="form-line error">
                                                <input type="password" class="form-control"  id="password" placeholder="Saisir l'ancien Mot de passe" onblur="validatePassword()">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <b>Saisir le nouveau Mot de passe: </b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">security</i>
                                            </span>
                                            <div class="form-line error">
                                                <input type="password" class="form-control" id="passChange1" placeholder="Saisir le nouveau Mot de passe" onblur="validatePassword1()">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <b>Resaisir le nouveau Mot de passe: </b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">edit</i>
                                            </span>
                                            <div class="form-line error">
                                                <input type="password" class="form-control" id="passChange2" placeholder="Resaisir le nouveau Mot de passe" onblur="validatePassword2()">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-md-5">
                                     	<button class="btn btn-danger btn-block"  id="savepassword" onclick="ChangerPassword()">
								            modifier mot de passe
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