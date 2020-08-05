 <section class="content">
        <div class="container-fluid">
            <div class="block-header">
               <ol class="breadcrumb breadcrumb-col-red waves-effect">
                   <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Messages</a></li>
                   <li class="active"> Envoyer message</li>
                </ol>
            </div>

            <!-- CKEditor -->
            
            <!-- #END# CKEditor -->
            <!-- TinyMCE -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        
                        <div class="body">
                        <div class="col-md-6">
                                        <br><b>Sujet</b>
                                        <div class="input-group">
                                            <div class="form-line error">
                                                <input type="text" class="form-control time12" id="sujet" onblur="validateSujet()">
                                            </div>
                                        </div>
                             </div>
                             <div class="col-md-6">
                                        <br><b>Email</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                            </span>
                                            <div class="form-line error">
                                                <input type="email" class="form-control time12" id="login" onblur="validateEmail()">
                                            </div>
                                        </div>
                             </div>
                            <textarea name="ckeditor" id="contenu">
                                Contenu.
                            </textarea>
                            <br>
                            <div class="col-md-4">
		                        
                            </div> 
                            <div class="col-md-4">
		                        <button class="btn btn-danger btn-block" type="submit" onclick="EnvoyerMessage()">
									Envoyer
								</button>
                            </div> 
                          <br><br><br> 
                        </div>
                        
                    </div>
 
                </div>
            </div>
        </div>
    </section>
    
    
