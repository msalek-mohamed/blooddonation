
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="./Ressources/images/SiteWeb/signin-image.jpg" alt="sing up image"></figure>
                        <a href="<%=request.getContextPath()+"/inscription"%>" class="signup-image-link">Créer un compte</a>
                        <a href="verifier.html" class="signup-image-link">Mot de passe oublié</a>
                        <a href="<%=request.getContextPath()+"/accueil"%>" class="signup-image-link">Accueil</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Se connecter</h2>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="votre Email" required />
                            </div>
                            <div class="form-group">
                                <div style="color:#ef767b; text-align: center; display: none;" id="l">
                                    email introuvable !
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="your_pass" id="password" placeholder="mot de passe" required />
                            </div>
                            <div class="form-group">
                                <div style="color:#ef767b; text-align: center; display: none;" id="p">
                                    Mot de passe incorrect !
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>sauvegarder</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="authetification" class="form-submit" value="Log in"/>
                            </div>
                        <div class="social-login">
                            <span class="social-label">Ou connectez-vous avec</span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
