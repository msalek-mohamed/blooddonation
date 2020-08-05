
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <ol class="breadcrumb breadcrumb-col-red waves-effect">
                   <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Experts</a></li>
                   <li class="active"> Ajouter Expert</li>
                </ol>
            </div>
         
               <!-- Input Group -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 offset-md_12  col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-md-6 ">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">supervisor_account</i>
                                        </span>
                                        <div class="form-line error">
                                            <input type="text" class="form-control date" placeholder="nom" id="nomnew" onblur="validateNom()">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">person</i>
                                        </span>
                                        <div class="form-line error">
                                            <input type="text" class="form-control date" placeholder="prenom" id="prenomnew" onblur="validatePrenom()">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">email</i> 
                                        </span>
                                        <div class="form-line error">
                                            <input type="text" class="form-control" placeholder="login" id="loginnew" onblur="validateEmail()">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">vpn_key</i> 
                                        </span>
                                        <div class="form-line error">
                                            <input type="password" class="form-control date" placeholder="mot de passe" id="password" onblur="validatePassword()">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">portrait</i>
                                        </span>
                                        <div class="form-line error">
                                            <input type="text" class="form-control" placeholder="cin" id="cinnew" onblur="validateCin()">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 ">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">call</i>
                                        </span>
                                        <div class="form-line error">
                                            <input type="tel" class="form-control date" placeholder="tél" id="telnew" onblur="validateTel()">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 ">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">cake</i>
                                        </span>
                                        <div class="form-line error">
                                            <input type="date" class="form-control date" placeholder="Date de naissance" id="age" onblur="validateAge()">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 ">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">location_city</i>
                                        </span>
                                        <div class="form-line error">
                                            <input type="adresse" class="form-control date" placeholder="adresse" id="adresse" onblur="validateAdresse()">
                                        </div>
                                    </div>
                                </div> 
                            <div class="float-left" align="center">                           
                                <div class="icon-and-text-button-demo">
                                 <button type="button" class="btn btn-default waves-effect"  id="submit" onclick="Enregistrer()">
                                    <span>Enregistrer</span>
                                </button>
                                 <button type="button" class="btn btn-danger  waves-effect " id="annuler" onclick="Annuler()">
                                    <span>Annuler</span>
                                </button>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Input Group -->
        </div>
    </section>
