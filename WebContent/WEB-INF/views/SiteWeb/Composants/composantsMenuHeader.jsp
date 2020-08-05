        <section class="header-wrapper navgiation-wrapper">

            <div class="navbar navbar-default">
                <div class="container">

                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="logo" href="<%=request.getContextPath()+"/accueil"%>"><img alt="" src="./Ressources/images/SiteWeb/logo.png"></a>
                    </div>

                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="drop">
                                <a href="<%=request.getContextPath()+"/accueil"%>" title="Home">Accueil</a>
                            </li>
                            <li><a href="<%=request.getContextPath()+"/aproposdenous"%>" title="About Us">A propos de nous</a></li>
                            <li><a href="<%=request.getContextPath()+"/inscription"%>" title="Register">S'inscrire</a></li>
                            <li><a href="<%=request.getContextPath()+"/authentification"%>" title="Login">S'identifier</a></li>
                            <!-- <li>
                                <a href="#">Campaign</a>
                                <ul class="drop-down">
                                    <li><a href="events.html">All Campaigns</a></li>
                                    <li><a href="event-single.html">Single Campaign</a></li>
                                </ul>
                            </li> 

                            <li class="drop"><a href="#">Pages</a>
                                <ul class="drop-down">


                                    <li><a href="faq.html" title="FAQ">FAQ</a></li>
                                    <li class="drop"><a href="#">Gallery</a>
                                        <ul class="drop-down level3">
                                            <li><a href="gallery-1.html">Layout 01</a></li>
                                            <li><a href="gallery-2.html">Layout 02</a></li>

                                        </ul>
                                    </li>
                                    <li><a href="404.html" title="404 Page">404 Page</a></li>
                                    <li class="drop"><a href="#">Level 3</a>
                                        <ul class="drop-down level3">
                                            <li><a href="#">Level 3.1</a></li>
                                            <li><a href="#">Level 3.2</a></li>
                                            <li><a href="#">Level 3.3</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Blog</a>
                                <ul class="drop-down">
                                    <li><a href="blog.html">All Posts</a></li>
                                    <li><a href="single.html">Single Page</a></li>
                                </ul>
                            </li> -->
                            <li><a href="<%=request.getContextPath()+"/contact"%>">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>