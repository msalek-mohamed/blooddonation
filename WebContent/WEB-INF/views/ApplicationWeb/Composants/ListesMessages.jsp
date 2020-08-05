<%@page import="services.ServiceMessage"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Personne"%>
<%@page import="models.Message"%>
<% 
 Personne PersonneRecevoir = (Personne) session.getAttribute("profil"); 
 ArrayList<Message> listMsg = ServiceMessage.ConsulterMessagesSansDuplication(PersonneRecevoir.getId_personne());
 %> 


<section class="content">
                <ol class="breadcrumb breadcrumb-col-red waves-effect">
                   <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Messages</a></li>
                   <li class="active"> Boite de réception</li>
                </ol>
       <div class="mail-box">           
                  <aside class="lg-side">
                      <div class="inbox-body">
                        
                          <table class="table table-inbox table-hover">
                            <tbody>  
                               <tr class="unread">                                                                    
                                  <td class="view-message dont-show">Destinateur</td>
                                  <td class="view-message">Sujet</td>
                                  <td class="view-message text-right">Date envoie</td>
                                  <td class="inbox-small-cells text-right">Supprimer</td>                                  
                              </tr> 
                                 <%for(Message msg : listMsg){%>                    
                              <tr>                                                                    
                                  <td class="view-message dont-show"><%=msg.getPersonne_envoyer().getNom_personne()%> <%=msg.getPersonne_envoyer().getPrenom_personne()%> </td>
                                  <td class="view-message view" style="font-weight:bolder;"><%=msg.getSujet_message()%></td>
                                  <td class="view-message text-right"><%=msg.getDate_envoie()%></td>
                                  <td class="inbox-small-cells text-right">
                                    <input type="hidden" value="<%=msg.getId_message()%>">
                                    <i class="supp material-icons" style="cursor: pointer;color: red;" >delete_forever</i>
                                  </td>                                  
                              </tr>
                                <%}%>                            
                          </tbody>
                          </table>
                      </div>
                  </aside>
              </div>
</section>


<script src="./Ressources/Js/ApplicationWeb/message.js"></script>
