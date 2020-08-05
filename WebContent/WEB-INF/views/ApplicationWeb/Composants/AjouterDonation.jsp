  <section class="content">
        <div class="container-fluid">
            <div class="row clearfix">
         
               <!-- Input Group -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2 style="color: red;">
                                Ajouter Donation
                            </h2>
                            
                        </div>
                        <div class="body">
                            <div class="row clearfix">
                                
                               
                              
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">fitness_center</i> 
                                        </span>
                                        <div class="form-line">
                                            <input  type="text" class="form-control" placeholder="Poids en Kg (Ex: 80)" id="poids" onblur="validatePoids()">
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-md-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">vertical_align_top</i> 
                                        </span>
                                        <div class="form-line">
                                            <input id="taille" type="text" class="form-control date" placeholder="Taille en m (Ex: 1.75)" onblur="validateTaille">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">bubble_chart</i>
                                        </span>
                                        <div >
                                            
                                            <select  class="form-control" placeholder="Groupe sanguin" id="groupSang" >
                                                <option value="A+" selected>A+</option>
                                                <option value="A-">A-</option>
                                                <option value="B+">B+</option>
                                                <option value="B-">B-</option>
                                                <option value="AB+">AB+</option>
                                                <option value="AB-">AB-</option>
                                                <option value="O+">O+</option>
                                                <option value="O-">O-</option>
                                             </select>
                                        </div>
                                    </div>
                                </div>
                            
                            <div class="float-left" align="center">                           
                                <div class="icon-and-text-button-demo">
                                 <button type="button" class="btn btn-danger waves-effect"  onclick="EnregistrerDonation()">
                                    <span>Enregistrer</span>
                                </button>
                                 <button type="button" class="btn btn-default  waves-effect " onclick="AnnulerTous()" >
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

    
    
 <script src="./Ressources/Js/ApplicationWeb/donationUtilisateur.js"></script>