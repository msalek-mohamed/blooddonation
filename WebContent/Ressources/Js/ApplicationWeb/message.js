	
	/*------------------------------------- validateEmail ----------------------------------------------*/ 
	
	function validateEmail() {
		 const email = document.getElementById('login');
		 var resultat ;
		
		 if((user_name(email.value) == true) && (arobace(email.value) == 1) && (alternative(email.value) == true) && (extension(email.value) == true)){
		     email.style.borderBottom="solid green"
		     resultat = true ; 
		
		 } else {
		           
		     email.style.borderBottom="solid red"
		    resultat = false ; 
		 }
		
		  return resultat; 
	}
	
	
	function user_name(login){
	    /*L'adresse email il faut commancer par unr lettre*/
	
	
	var unaa=login.split("@")[0];
	var us= unaa.split(".")[0];
	var ret;
	if ((us[0]>='a' && login[0]<='z') || (us[0]>='A' && login[0]<='Z')  ) {
	   ret=true;} 
	
	 return ret;
	
	}
	
	
	
	
	function arobace(login){
	   /*l'adresse email doit contient une seule @ */
	var aro = login.split("@").length-1;
	return aro; 
	
	}
	
	
	
	function alternative(login){
	   /* l'adresse doit avoir comme alternative yahoo ou outlook ou hotmail ou bien gmail*/
	   var tab=["yahoo","outlook","hotmail", "gmail"];
	   var alt=login.split("@")[1];
	   var alter=alt.split(".")[0];
	   var ret;
	for (var i=0; i<tab.length; i++) {
	   if (tab[i]== alter) {
	       ret=true;}
	   }	
	return ret ;
	
	}
	
	function extension(login){
	  /* l'adresse doit avoir comme extension .ma ou .fr ou .met ou .com ou be*/
	   var tab=["ma","fr","met","com","be"];
	   var ext=login.split(".")[login.split(".").length-1];
	   var ret;
	for (var i=0; i<tab.length; i++) {
	   if (tab[i]== ext) {
	       ret=true;}
	   }	
	return ret ;
	
	}
	
	/*------------------------------------- validatesujet ----------------------------------------------*/ 
	
	function validateSujet(){
	
		const  suj =  document.getElementById('sujet'); 
		var resultat ;
		
		if (suj.value.length == 0) {
		    
		     suj.style.borderBottom="solid red"
		     resultat = false ; 
		}
		else {
		    suj.style.borderBottom="solid green"
		     resultat = true ; 
		
		}
		return  resultat ; 
	
	}
	
	/*------------------------------------- validateContenu ----------------------------------------------*/ 
	


	function EnvoyerMessage(){
		if((validateEmail() == true ) && (validateSujet() == true)){
			var login = document.getElementById('login').value;
			var sujet = document.getElementById('sujet').value;
			var contenu = document.getElementById('contenu').textContent;
			console.log(contenu);
			 	$.post("envoyer",{"login":login,"sujet":sujet,"contenu":contenu,"operation":"envoyer"},
					function(data){
						
	 		if(data == 1){
	 			swal({
	 				  title: "",
	 				  text: "Votre message bien ajouter!",
	 				  icon: "success",
	 				  button: "Ok !",
	 				}).then(function(isConfirm) {
	 					  if (isConfirm) {
	 						 document.location.href ='http://localhost:8080/blooddonation/messages';
	 						  } else {
	 						    //if no clicked => do something else
	 							 //document.location.href = 'http://localhost:8080/readmore/monprofil';
	 						  }
	 						});
	 		}else{
                   document.getElementById("login").style.borderBottom="solid red";
				}
			});
		}
		else{
			 var Tab = [validateEmail(),validateSujet()];
		}
	}


	function SupprimerMsg(){
		var idMessage = this.parentElement.children[0].value;
		var tr = this.parentElement.parentElement;
		swal({
	        text: "vous voulez vraiment supprimer ce message!",
	        buttons: ["Annuler", true],
	        dangerMode: true,
	      })
	      .then((willDelete) => {
	        if (willDelete) {
	            //backend ici supprimer ....
	           $.post("messages",{"idSupp":idMessage,"operation":"supprimer"},function(data){
	              if(data == 1){
	            	 tr.remove();
	            	  
	                  swal("Le message a ete bien supprimer!", {
	                  icon: "success",
	                });
	                  
	                  
	              }
	              else{
	            	  swal("le message n'est pas supprimer!", {
	                      icon: "error",
	                    });
	              }
	           
	           });
	        
	        } 
	      });
	}
	
	
	
	function VusialiserMsg(){
		var idMessage = this.parentElement.children[3].children[0].value;
		document.location.href = 'http://localhost:8080/blooddonation/visualisermessage?idMessage='+idMessage;
	}
	
	
		window.onload=function(){
		
		    var sup = document.getElementsByClassName("supp");
		    for (var i = 0; i < sup.length; i++) {
				sup[i].addEventListener('click', SupprimerMsg);
			}
		
		    var view = document.getElementsByClassName("view");
		    for (var i = 0; i < view.length; i++) {
				view[i].addEventListener('click', VusialiserMsg);
			}
		       
		  }
