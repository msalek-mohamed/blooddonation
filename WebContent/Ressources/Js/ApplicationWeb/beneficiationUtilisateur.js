	function validateQuantite(){
	
		const quantite =  document.getElementById('quantite'); 
		const num = /^[0-9]{3,13}$/;
		var resultat ;
		
		
		   if(!num.test(quantite.value)){  
		
		       quantite.style.borderBottom="solid red"
		        resultat = false ; 
		   
		   } else {
		       quantite.style.borderBottom="solid green"
		        resultat = true ; 
		
		   }
		   return resultat;
	
	}
   


	function AnnulerTous(){
		document.location.href = 'http://localhost:8080/blooddonation/beneficiations';
	}
	
	function EnregistrerBeneficiation(){
		if((validateQuantite() == true ) ){
		   var quantite = document.getElementById('quantite').value;
           var groupSang = document.getElementById('groupSang').options[document.getElementById('groupSang').selectedIndex].value;	      
      /*TraitmentBackend*/
		    	$.post("ajouterbeneficiation",{"quantite":quantite,"groupSang":groupSang,"operation":"ajouterBeneficiation"},
		 				function(data){
		    		 if(data == 1){
		    			 swal({
			 				  title: "",
			 				  text: "Votre beneficiation bien enregistrer!",
			 				  icon: "success",
			 				  button: "Ok !",
			 				}).then(function(isConfirm) {
			 					  if (isConfirm) {
			 						 document.location.href = 'http://localhost:8080/blooddonation/beneficiations';
			 						  } else {
			 						    //if no clicked => do something else
			 							 document.location.href = 'http://localhost:8080/blooddonation/beneficiations';
			 						  }
			 						});
		    		 }
		    		 else{
		    			 document.getElementById('password').style.borderBottom="solid red";
		    		 } 
		    	});

		    
		 } 
		else {
		  var Tab = [validateQuantite()];
		}
	}
	
	function Supprimer(){
		var idbeneficiation = this.parentElement.parentElement.children[0].textContent;
		var tr =  this.parentElement.parentElement;
		swal({
        text: "Vous voulez vraiment supprimer cette donation!",
        buttons: ["Annuler", true],
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            //backend ici supprimer ....
        	$.post("beneficiations",{"idbeneficiation":idbeneficiation,"operation":"supprimerBeneficiation"},
    				function(data){
              if(data == 1){
            	  tr.remove();           	  
                  swal("Beneficiation bien supprimer!", {
                  icon: "success",
                });
                  
                  
              }
              else{
            	  swal("Beneficiation n'est pas supprimer!", {
                  icon: "error",
                });
              }
           
           });
        
        } 
      });
	}

	function Visualiser(){
	   var idbeneficiation = this.parentElement.parentElement.children[0].textContent;
       document.location.href = 'http://localhost:8080/blooddonation/beneficiation?idbeneficiation='+idbeneficiation;
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