	
	    
	function validatePoids(){		
			const p=  document.getElementById('poids'); 
			const num = /^[.0-9]{2,13}$/;
			var resultat ;
			
			
			   if(!num.test(p.value)){  
			
			       p.style.borderBottom="solid red"
			        resultat = false ; 
			   
			   } else {
			       p.style.borderBottom="solid green"
			        resultat = true ; 
			
			   }
			   return resultat;
		
	}
	
	function validateTaille(){
		    const  T =  document.getElementById('taille'); 
            const num = /^[.0-9]{2,13}$/;
		    var resultat ;
		    
		    if(!num.test(T.value)){
		        
		         T.style.borderBottom="solid red"
		         resultat = false ; 
		    }
		    else {
		        T.style.borderBottom="solid green"
		         resultat = true ; 
		    
		    }
		    return  resultat ; 
	}

	function AnnulerTous(){
		document.location.href = 'http://localhost:8080/blooddonation/donations';
	}
	
	function EnregistrerDonation(){
		if((validatePoids() == true ) && (validateTaille() == true )  ){
		   var poids = document.getElementById('poids').value;
           var taille = document.getElementById('taille').value;
           var groupSang = document.getElementById('groupSang').options[document.getElementById('groupSang').selectedIndex].value;	      
      /*TraitmentBackend*/
		    	$.post("ajouterdonation",{"poids":poids,"taille":taille,"groupSang":groupSang,"operation":"AjouterDonation"},
		 				function(data){
		    		 if(data == 1){
		    			 swal({
			 				  title: "",
			 				  text: "Votre donation bien enregistrer!",
			 				  icon: "success",
			 				  button: "Ok !",
			 				}).then(function(isConfirm) {
			 					  if (isConfirm) {
			 						 document.location.href = 'http://localhost:8080/blooddonation/donations';
			 						  } else {
			 						    //if no clicked => do something else
			 							 document.location.href = 'http://localhost:8080/blooddonation/donations';
			 						  }
			 						});
		    		 }
		    		 else{
		    			 document.getElementById('password').style.borderBottom="solid red";
		    		 } 
		    	});

		    
		 } 
		else {
		  var Tab = [validatePoids(),validateTaille()];
		}
	}




	function Supprimer(){
		var idDonation = this.parentElement.parentElement.children[0].textContent;
		var tr =  this.parentElement.parentElement;
		swal({
        text: "Vous voulez supprimer cette donation!",
        buttons: ["Annuler", true],
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            //backend ici supprimer ....
        	$.post("donations",{"idDonation":idDonation,"operation":"supprimerDonation"},
    				function(data){
              if(data == 1){
            	  tr.remove();           	  
                  swal("Donation bien supprimer!", {
                  icon: "success",
                });
                  
                  
              }
              else{
            	  swal("Donation n'est pas supprimer!", {
                  icon: "error",
                });
              }
           
           });
        
        } 
      });
	}
	

	function Visualiser(){
	   var idDonation = this.parentElement.parentElement.children[0].textContent;
       document.location.href = 'http://localhost:8080/blooddonation/donation?idDonation='+idDonation; 
       
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