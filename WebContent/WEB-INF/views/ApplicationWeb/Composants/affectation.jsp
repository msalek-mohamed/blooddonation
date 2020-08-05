<%@page import="models.Personne"%>
<%@page import="services.ServiceBeneficiation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Beneficiation"%>
<%@page import="models.Personne"%>
<%@page import="services.ServiceDonation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Donation"%>

<% 
 String GroupSanguin = request.getParameter("GroupeSanguin");
ArrayList<Donation> donations ;
ArrayList<Beneficiation> beneficiations ;
if(GroupSanguin.equals("O")){
	 donations = ServiceDonation.ChercherDonationViaGroupSang("O+");
	 beneficiations = ServiceBeneficiation.ChercherBeneficiationViaGroupSang("O+");
}
else if(GroupSanguin.equals("A")){
	 donations = ServiceDonation.ChercherDonationViaGroupSang("A+");
	 beneficiations = ServiceBeneficiation.ChercherBeneficiationViaGroupSang("A+");
}
else if(GroupSanguin.equals("B")){
	 donations = ServiceDonation.ChercherDonationViaGroupSang("B+");
	 beneficiations = ServiceBeneficiation.ChercherBeneficiationViaGroupSang("B+");
}
else if(GroupSanguin.equals("AB")){
	 donations = ServiceDonation.ChercherDonationViaGroupSang("AB+");
	 beneficiations = ServiceBeneficiation.ChercherBeneficiationViaGroupSang("AB+");
}
else{
	 donations = ServiceDonation.ChercherDonationViaGroupSang(GroupSanguin);
	 beneficiations = ServiceBeneficiation.ChercherBeneficiationViaGroupSang(GroupSanguin);
}
 %>  
  
  
  <section class="content">
       <div class="container-fluid">
            <div class="row clearfix">
         
               <!-- Input Group -->
            <div class="row clearfix">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Listes des beneficiers :
                            </h2>
                        </div>
                        <div class="body" style="overflow:scroll; height: 200px;">
                            <%for(Beneficiation b : beneficiations){%>
                            <ol class="breadcrumb">
                                <li><%=b.getId_beneficiation()%></li>
                                <li><%=b.getBeneficier().getNom_personne()%> <%=b.getBeneficier().getPrenom_personne()%></li>
                                <li><%=b.getGroupe_sangaire()%></li>
                            </ol>
                            <%}%>
                        </div>
                    </div>
              </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Listes des donneurs :
                            </h2>
                        </div>
                        <div class="body" style="overflow:scroll; height: 200px;">
                            <%for(Donation d : donations){%>
                            <ol class="breadcrumb">
                                <li><%=d.getId_donation()%></li>
                                <li><%=d.getDonneur().getNom_personne()%> <%=d.getDonneur().getPrenom_personne()%></li>
                                <li><%=d.getGroupe_sangaire()%></li>
                            </ol>
                            <%}%>                          
                        </div>
                    </div>
              </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2 style="color: red;">
                                Affecter donneur au beneficier :
                            </h2>
                            
                        </div>
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-md-6">
                                   <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">pan_tool</i> 
                                        </span>
                                        <div class="form-line error">
                                            <input type="text" class="form-control date" id="idBeneficiation" placeholder="Entrer id beneficiation" onblur="validateIdBeneficiation()" >
                                        </div>
                                    </div>   
                                </div>
                                
                                <div class="col-md-6">
                                   <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">opacity</i> 
                                        </span>
                                        <div class="form-line error">
                                            <input type="text" class="form-control date" id="idDonation" placeholder="Entrer id donation" onblur="validateIdDonation()" >
                                        </div>
                                    </div>                                    
                                </div>

                            
                            <div class="float-left" align="center">                           
                                <div class="icon-and-text-button-demo">
                                 <button type="button" class="btn btn-danger waves-effect"  onclick="Affecter()">
                                    <span>Affecter</span>
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
        </div>
    </section>

    
    
    