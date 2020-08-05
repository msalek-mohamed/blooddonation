<%@page import="models.Role"%>
<%@page import="models.Personne"%>
<% 
   Personne MyProfil = (Personne) session.getAttribute("profil"); 
   Role role = MyProfil.getRole();
%>

    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="./Ressources/images/ApplicationWeb/Profil/<%=MyProfil.getProfil().getUrl_image()%>" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" style="color: black;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><%=MyProfil.getNom_personne()%>  <%=MyProfil.getPrenom_personne()%></div>
                    <div class="email" style="color: black;"><%=MyProfil.getLogin_personne()%></div>
                    <div class="btn-group user-helper-dropdown">
                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="javascript:void(0);"><i class="material-icons">person</i>Profile</a></li>
                            <li role="seperator" class="divider"></li>
                            <li><a href="<%=request.getContextPath()+"/deconnexion"%>"><i class="material-icons">input</i>Deconnexion</a></li>
                        </ul>
                    </div>
                </div>
            </div>

           <%switch(role) 
	        { 
	            case expert : %>
	        <!-- Menu -->

            <div class="menu">
                <ul class="list">
                    <li class="active">
                        <a href="<%=request.getContextPath()+"/statistique"%>">
                            <i class="material-icons">dashboard</i>
                            <span>Statistiques</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">account_box</i>
                            <span>Gerer profil</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="<%=request.getContextPath()+"/profil"%>">Voir profil</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/changer"%>">Changer mot de passe</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/modifiercoordonnee"%>">Modifier coordonnees</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">message</i>
                            <span>Messsages</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="<%=request.getContextPath()+"/envoyer"%>">Envoyer message</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/messages"%>">Mes messages</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()+"/donations"%>">
                            <i class="material-icons">opacity</i>
                            <span>demande donation</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()+"/beneficiations"%>">
                            <i class="material-icons">pan_tool</i>
                            <span>demande beneficiation</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">extension</i>
                            <span>Affectation</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="<%=request.getContextPath()+"/chercher"%>">Ajouter affectation</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/affectations"%>">listes affectations</a>
                            </li>
                        </ul>
                    </li> 
                </ul>  
            </div>
            <!-- #Menu -->
           <% break; 
           case admin : %>
           <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="active">
                        <a href="<%=request.getContextPath()+"/statistique"%>">
                            <i class="material-icons">dashboard</i>
                            <span>Statistiques</span>
                        </a>
                    </li>                  
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">account_box</i>
                            <span>Gerer profil</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="<%=request.getContextPath()+"/profil"%>">Voir profil</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/changer"%>">Changer mot de passe</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/modifiercoordonnee"%>">Modifier coordonnees</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">message</i>
                            <span>Messsages</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="<%=request.getContextPath()+"/envoyer"%>">Envoyer message</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/messages"%>">Mes messages</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">work</i>
                            <span>Gerer experts</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="<%=request.getContextPath()+"/ajouterexpert"%>">Ajouter expert</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/consulterexpert"%>">Consulter experts</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">group</i>
                            <span>Gerer Utilisateurs</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="<%=request.getContextPath()+"/consulterutilisateur"%>">Consulter utilisateurs</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">
                            <i class="material-icons">settings</i>
                            <span>Parametrer systeme</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- #Menu -->

          <% break; 
          case utilisateur : %>
          
          <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="active">
                        <a href="<%=request.getContextPath()+"/accueil"%>">
                            <i class="material-icons">home</i>
                            <span>Accueil</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">account_box</i>
                            <span>Gerer profil</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="<%=request.getContextPath()+"/profil"%>">Voir profil</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/changer"%>">Changer mot de passe</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/modifiercoordonnee"%>">Modifier coordonnees</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">message</i>
                            <span>Messsages</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="<%=request.getContextPath()+"/envoyer"%>">Envoyer message</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/messages"%>">Mes messages</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">opacity</i>
                            <span>Donnation</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="<%=request.getContextPath()+"/ajouterdonation"%>">Ajouter donation</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/donations"%>">Mes donations</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">pan_tool</i>
                            <span>Beneficiation</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="<%=request.getContextPath()+"/ajouterbeneficiation"%>">Ajouter bénéficiation</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()+"/beneficiations"%>">Mes bénéficiations</a>
                            </li>
                        </ul>
                    </li>                    
                </ul>
            </div>
            <!-- #Menu -->
          <%break; 
          }%>
        </aside>
         <!-- Right Sidebar -->
        <aside id="rightsidebar" class="right-sidebar">
            <ul class="nav nav-tabs tab-nav-right" role="tablist">
                <li role="presentation" class="active"><a href="#skins" data-toggle="tab">SKINS</a></li>
                <li role="presentation"><a href="#settings" data-toggle="tab">SETTINGS</a></li>
            </ul>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active in active" id="skins">
                    <ul class="demo-choose-skin">
                        <li data-theme="red" class="active">
                            <div class="red"></div>
                            <span>Rouge</span>
                        </li>
                        <li data-theme="pink">
                            <div class="pink"></div>
                            <span>Rose</span>
                        </li>
                        <li data-theme="purple">
                            <div class="purple"></div>
                            <span>Violet</span>
                        </li>
                        <li data-theme="deep-purple">
                            <div class="deep-purple"></div>
                            <span>Violet foncé</span>
                        </li>
                        <li data-theme="indigo">
                            <div class="indigo"></div>
                            <span>Indigo</span>
                        </li>
                        <li data-theme="blue">
                            <div class="blue"></div>
                            <span>Bleu</span>
                        </li>
                        <li data-theme="light-blue">
                            <div class="light-blue"></div>
                            <span>Bleu claire</span>
                        </li>
                        <li data-theme="cyan">
                            <div class="cyan"></div>
                            <span>Cyan</span>
                        </li>
                        <li data-theme="teal">
                            <div class="teal"></div>
                            <span>Teal</span>
                        </li>
                        <li data-theme="green">
                            <div class="green"></div>
                            <span>Vert</span>
                        </li>
                        <li data-theme="light-green">
                            <div class="light-green"></div>
                            <span>Vert claire</span>
                        </li>
                        <li data-theme="lime">
                            <div class="lime"></div>
                            <span>Lime</span>
                        </li>
                        <li data-theme="yellow">
                            <div class="yellow"></div>
                            <span>Jaune</span>
                        </li>
                        <li data-theme="amber">
                            <div class="amber"></div>
                            <span>Amber</span>
                        </li>
                        <li data-theme="orange">
                            <div class="orange"></div>
                            <span>Orange</span>
                        </li>
                        <li data-theme="deep-orange">
                            <div class="deep-orange"></div>
                            <span>Orange foncé</span>
                        </li>
                        <li data-theme="brown">
                            <div class="brown"></div>
                            <span>Brown</span>
                        </li>
                        <li data-theme="grey">
                            <div class="grey"></div>
                            <span>Gris</span>
                        </li>
                        <li data-theme="blue-grey">
                            <div class="blue-grey"></div>
                            <span>Blue Grey</span>
                        </li>
                        <li data-theme="black">
                            <div class="black"></div>
                            <span>Black</span>
                        </li>
                    </ul>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="settings">
                    <div class="demo-settings">
                        <p>GENERAL SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Report Panel Usage</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                            <li>
                                <span>Email Redirect</span>
                                <div class="switch">
                                    <label><input type="checkbox"><span class="lever"></span></label>
                                </div>
                            </li>
                        </ul>
                        <p>SYSTEM SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Notifications</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                            <li>
                                <span>Auto Updates</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                        </ul>
                        <p>ACCOUNT SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Offline</span>
                                <div class="switch">
                                    <label><input type="checkbox"><span class="lever"></span></label>
                                </div>
                            </li>
                            <li>
                                <span>Location Permission</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </aside>
        <!-- #END# Right Sidebar -->
    </section>