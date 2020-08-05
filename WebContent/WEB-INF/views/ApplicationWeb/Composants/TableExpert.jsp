
<%@page import="java.util.ArrayList"%>
<%@page import="models.Personne"%>
<%@page import="services.ServicePersonne"%>
<% 
ArrayList<Personne> experts = ServicePersonne.ConsulterListesexpert(); 
%> 

<section class="content">
        <div class="container-fluid">
            <div class="row clearfix">
               <ol class="breadcrumb breadcrumb-col-red waves-effect">
		          <li><a href="javascript:void(0);" ><i class="material-icons">room</i> Gestion des experts</a></li>
	              <li class="active"> consulter la liste des experts</li>
                </ol>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover js-basic-example " >
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nom</th>
                                            <th>Prenom</th>
                                            <th>e-mail</th>
                                            <th>CIN</th>
                                            <th>Date-naissance</th>
                                            <th>Tel</th>
                                            <th>Adress</th>
                                            <th style=" width: 40px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                   
                                   
                                   <% for (Personne p : experts){ %>
                                        <tr>
                                            <td><%=p.getId_personne()%></td>
                                            <td><%=p.getNom_personne()%> </td>
                                            <td><%=p.getPrenom_personne()%> </td>
                                            <td><%=p.getLogin_personne()%></td>
                                            <td><%=p.getCin_personne()%></td>
                                            <td><%=p.getDate_naissance()%></td>
                                            <td><%=p.getTel_personne()%></td>
                                            <td><%=p.getAdresse_personne()%></td>
                                            <td>
                                                <i class="voir material-icons" style="cursor: pointer;color: red;">visibility</i>
                                                <i class="supp material-icons" style="cursor: pointer;color: red;">delete_forever</i>
                                            </td>
                                        </tr>
                                        <%}%>
                                        
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
    <script>    
    
    function Supprimer(){
    	var idExpert = this.parentElement.parentElement.children[0].textContent;
    	var tr = this.parentElement.parentElement;
    	
    	swal({
            text: "Vous voulez vraiment supprimer cet expert!",
            buttons: ["Annuler", true],
            dangerMode: true,
          })
          .then((willDelete) =>{
            if (willDelete) {
                //backend ici supprimer ....
               $.post("consulterexpert",{"idSupp":idExpert,"operation":"supprimer"},function(data){
                  if(data == 1){
                	 tr.remove();
                	  
                      swal("L'expert a ete bien supprimer!", {
                      icon: "success",
                    });
                      
                      
                  }
                  else{
                	  swal("l'expert n'est pas supprimer!", {
                          icon: "error",
                        });
                  }
               
               });
            
            } 
          });
    }


    function Visualiser(){
    	var idExpert = this.parentElement.parentElement.children[0].textContent;
    	document.location.href = 'http://localhost:8080/blooddonation/visualiserexpert?idExpert='+idExpert;
    }






    window.onload=function(){
    	
    	

        var sup = document.getElementsByClassName("supp");
        for (var i = 0; i < sup.length; i++) {
    		sup[i].addEventListener('click', Supprimer);
    	}

        var view = document.getElementsByClassName("voir");
        for (var i = 0; i < view.length; i++) {
    		view[i].addEventListener('click', Visualiser);
    	}
           
      }
    
    </script>