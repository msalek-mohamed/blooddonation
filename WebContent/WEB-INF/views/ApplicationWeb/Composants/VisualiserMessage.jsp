<%@page import="models.Message"%>
<%@page import="services.ServiceMessage"%>
<% 
 int idM = Integer.parseInt(request.getParameter("idMessage")); 
 Message msg = ServiceMessage.ChercherMessageViaId(idM);
%>


<section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <ol class="breadcrumb breadcrumb-col-red waves-effect">
                   <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Messages</a></li>
                   <li class="active"> Visualiser message</li>
                </ol>
            </div>
            <!-- Input -->
           
            <!-- #END# Input -->
            <!-- Textarea -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="body"> 
                                <div class="col-md-12">
                                        <b>Déstinataire :</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                 <i style="color:#F44336;" class="material-icons">person</i>
                                            </span>
                                            <div class="form-line error">
                                                <%=msg.getPersonne_envoyer().getLogin_personne()%>
                                            </div>
                                        </div>
                                </div>
                                <div class="col-md-12">
                                        <b>Sujet :</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                 <i style="color:#F44336;" class="material-icons">email</i>
                                            </span>
                                            <div class="form-line error">
                                                <%=msg.getSujet_message()%> 
                                            </div>
                                        </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                     
                                        <p> <%=msg.getContenu_message()%></p>
                                        <p><%=msg.getPersonne_envoyer().getNom_personne()%> <%=msg.getPersonne_envoyer().getPrenom_personne()%></p>
                                    <div class="form-line">
                                        <h6>
                                          <br>
                                          <span style="color:black;"><%=msg.getDate_envoie()%></span>  
                                        </h6>
                                     </div> 
                                    </div>
                                </div>  
                                <div class="footer">
                                     <div class="icon-button-demo"> 
                                          <button  type="button" class="btn btn-default waves-effect">
                                              <i class="material-icons">print</i>
                                          </button>
                                          <button  type="button" class="btn btn-danger waves-effect">
                                              <i class="material-icons">delete</i>
                                          </button> 
                                     </div>
                                </div>  
                        </div>
                    </div>
                </div>
            </div>            
          </div>

    </section>

