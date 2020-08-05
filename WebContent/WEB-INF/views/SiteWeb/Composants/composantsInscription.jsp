                 <div class="signup-form">
                        <h2 class="form-title">S'inscrire</h2>
                        
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="basic-addon1"><i class="zmdi zmdi-account material-icons-name"></i></span>
                                    </div>
                                    <input class="form-control inptinsc" type="text" name="prenom" id="name" placeholder="votre prenom" >
                                        <div class="valid-feedback"></div>
                                    <div class="invalid-feedback">
                                        Le prenom doit comporter entre 2 et 10 caractères
                                    </div>
                                  </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="basic-addon1"><i class="zmdi zmdi-account material-icons-name"></i></span>
                                    </div>
                                    <input type="text" id="name2"  class="form-control inptinsc" name="nom" placeholder="votre nom" required>
                                        <div class="valid-feedback"></div>
                                    <div class="invalid-feedback">
                                        Le nom doit comporter entre 2 et 10 caractères.
                                    </div>
                                  </div>
                            </div>
                            <div class="form-group" >
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="basic-addon1"><i class="zmdi zmdi-email"></i></span>
                                    </div>
                                    <input type="text" id="email" class="form-control inptinsc" placeholder="votre Email" required>
                                        <div class="valid-feedback"></div>
                                    <div class="invalid-feedback">
                                        veuillez saisir un email valide
                                    </div>
                                  </div>
                            </div>
                            <div class="form-group">
                                    <div class="controls">
                                        <div>
                                            Date de naissance : 
                                        </div>
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1"><i class="zmdi zmdi-assignment-o"></i></span>
                                            <input class="form-control inptinsc" type="date" id="date" name="date"  placeholder="date" required>                            
                                        </div>
                                    </div>
                            </div>
                            <div class="form-group" >
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="basic-addon1"><i class="zmdi zmdi-tab"></i></span>
                                    </div>
                                    <textarea class="form-control inptinsc" type="text" name="prenom" id="adresse" placeholder="votre adresse" required></textarea>                                        <div class="valid-feedback"></div>
                                    <div class="invalid-feedback">
                                        veuillez saisir une adresse valide
                                    </div>
                                  </div>
                            </div>
                            <div class="form-group" >
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="basic-addon1"><i class="zmdi zmdi-tab"></i></span>
                                    </div>
                                    <input class="form-control inptinsc" type="text" id="cin" name="cin"  placeholder="votre CIN" required>
                                        <div class="valid-feedback"></div>
                                    <div class="invalid-feedback">
                                        veuillez saisir un CIN valide
                                    </div>
                                  </div>
                            </div>
                            <div class="form-group" >
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="basic-addon1"><i class="zmdi zmdi-smartphone"></i></span>
                                    </div>
                                    <input class="form-control inptinsc" type="tel" id="tel" name="tel"  placeholder="votre numero de telephone" required>
                                        <div class="valid-feedback"></div>
                                    <div class="invalid-feedback">
                                        veuillez saisir un numero valide
                                    </div>
                                  </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="basic-addon1"><i class="zmdi zmdi-lock"></i></span>
                                    </div>
                                    <input class="form-control inptinsc" type="password" name="password" id="password" placeholder="mot de passe"  onchange='check_pass();' required >
                                        <div class="valid-feedback"></div>
                                    <div class="invalid-feedback">
                                        Entrez un mot de passe valide.
                                    </div>
                                  </div>

                            </div>
                            <div class="form-group">
                                
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="basic-addon1"><i class="zmdi zmdi-lock-outline"></i></span>
                                    </div>
                                    <input class="form-control inptinsc" type="password" name="confirm_password" id="confirm_password" placeholder="Répétez votre mot de passe"  onchange='check_pass();' required >
                                    <div class="valid-feedback"></div>
                                    <div class="invalid-feedback">
                                        Entrez le même mot de passe que ci-dessus
                                    </div>
                                 </div>
                            </div>
                            
                            <div class="form-group">                             
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="basic-addon1"><i class="zmdi zmdi-account-o"></i></span>
                                    </div>
                                    <select class="form-control inptinsc"  id="pet-select">
									    <option value="genre">-- Genre --</option>
									    <option value="femme">Femme</option>
									    <option value="homme">Homme</option>
									</select>
                                    <div class="valid-feedback"></div>
                                    <div class="invalid-feedback">
                                        Choisir le genre!
                                    </div>
                                 </div>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" required />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>J'accepte toutes les déclarations <a href="#" class="term-service"> des conditions d'utilisation</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" id="inscription" class="form-submit" value="Inscription"  />
                            </div>
                    
                    </div>
                    <div class="signup-image">
                        <figure><img src="./Ressources/images/SiteWeb/new2.jpg" alt="sing up image"></figure>
                        <a href="<%=request.getContextPath()+"/authentification"%>" class="signup-image-link">Je suis déjà membre</a>
                        <a href="<%=request.getContextPath()+"/accueil"%>" class="signup-image-link">Accueil</a>
                    </div>