 		
  function ChercherAffectation(){
	var groupSang = document.getElementById('groupSang').options[document.getElementById('groupSang').selectedIndex].value;
	document.location.href = 'http://localhost:8080/blooddonation/affectation?GroupeSanguin='+groupSang;
  }

 
  function AnnulerTous(){
	document.location.href = 'http://localhost:8080/blooddonation/statistique';
  }  

  function validateIdDonation(){
		
		const id =  document.getElementById('idDonation'); 
		const num = /^[0-9]{1,200}$/;
		var resultat ;
		
		
		   if(!num.test(id.value)){  
		
		       id.style.borderBottom="solid red"
		        resultat = false ; 
		   
		   } else {
		       id.style.borderBottom="solid green"
		        resultat = true ; 
		
		   }
		   return resultat;
		
		}
		
		
		
		function validateIdBeneficiation(){
		
		const id =  document.getElementById('idBeneficiation'); 
		const num = /^[0-9]{1,200}$/;
		var resultat ;
		
		
		   if(!num.test(id.value)){  
		
		       id.style.borderBottom="solid red"
		        resultat = false ; 
		   
		   } else {
		       id.style.borderBottom="solid green"
		        resultat = true ; 
		
		   }
		   return resultat;
		
		}
		
		
		
		function Affecter(){
			 if((validateIdDonation() == true ) && (validateIdBeneficiation() == true) ){
		   var idBeneficiation  = document.getElementById('idBeneficiation').value;
		   var idDonation       = document.getElementById('idDonation').value;
           console.log(idBeneficiation+" "+idDonation)

		       /*TraitmentBackend*/
		    	$.post("affectation",{"idBeneficiation":idBeneficiation,"idDonation":idDonation,"operation":"affecter"},
		 				function(data){
		    		 if(data == 1){
		    			 swal({
			 				  title: "",
			 				  text: "Votre affectation bien enregistrer!",
			 				  icon: "success",
			 				  button: "Ok !",
			 				}).then(function(isConfirm) {
			 					  if (isConfirm) {
			 						 document.location.href = 'http://localhost:8080/blooddonation/affectations';
			 						  } else {
			 						    //if no clicked => do something else
			 							 document.location.href = 'http://localhost:8080/blooddonation/affectations';
			 						  }
			 						});
		    		 }
		    		 else{
		    			
		    		 } 
		    	});
		  
		 } 
		else {
		  var Tab = [validateIdDonation(),validateIdBeneficiation()];
		}
		}
