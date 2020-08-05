		/* ---- Changer Mot De passe ---- */
		
		/* ---- Debut Validation Nouveau Mot de pass ---- */
		function validatePassword1(){
		   const password =  document.getElementById('passChange1'); 
		   var resultat ;
		
		   if (password.value.length>9) {
		       password.style.borderBottom="solid green";
		 
		        resultat = true ; 
		   }
		   
		   else{
		
		   	 password.style.borderBottom="solid red";
		   	  resultat = false ; 
		   }
		   return resultat;
		
		}
		
		function validatePassword2(){
		   const password =  document.getElementById('passChange2'); 
		   var resultat ;
		
		   if (password.value.length>9) {
		        password.style.borderBottom="solid green";
		        resultat = true ; 
		   }
		   
		   else{
		
		   	 password.style.borderBottom="solid red";
		   	  resultat = false ; 
		   }
		   return resultat;
		
		}
		
		function validatePassword(){
			   const password =  document.getElementById('password'); 
			   var resultat ;
		
			   if (password.value.length>9) {
			       password.style.borderBottom="solid green";
			        resultat = true ; 
			   }
			   
			   else{
		
			   	 password.style.borderBottom="solid red";
			   	  resultat = false ; 
			   }
			   return resultat;
		
			}
		
		
		/* ---- Fin Validation Nouveau Mot de pass ---- */
		
		/* ---- Debut Changer Mot de pass ---- */
		function ChangerPassword(){
		   password1 = document.getElementById('passChange1'); 
		   password2 = document.getElementById('passChange2');  
		 if((validatePassword1() == true ) && (validatePassword2() == true) && (validatePassword() == true ) ){
		   var pass         = password1.value;
		   var passConfirme = password2.value;
		   var password = document.getElementById('password').value;
		    if(password1.value == password2.value){
		       /*TraitmentBackend*/
		    	$.post("changer",{"NouveauPassword":pass,"AncienPassword":password,"operation":"changer"},
		 				function(data){
		    		 if(data == 1){
		    			 swal({
			 				  title: "",
			 				  text: "Votre nouveau mot de passe bien enregistrer!",
			 				  icon: "success",
			 				  button: "Ok !",
			 				}).then(function(isConfirm) {
			 					  if (isConfirm) {
			 						 document.location.href = 'http://localhost:8080/blooddonation/profil';
			 						  } else {
			 						    //if no clicked => do something else
			 							 document.location.href = 'http://localhost:8080/blooddonation/profil';
			 						  }
			 						});
		    		 }
		    		 else{
		    			 document.getElementById('password').style.borderBottom="solid red";
		    		 } 
		    	});
		    }
		    else{
		      password1.style.borderBottom="solid red";
		      password2.style.borderBottom="solid red";
		    }
		 } 
		else {
		  var Tab = [validatePassword1(),validatePassword2(),validatePassword()];
		}
		}
/* ---- Changer Mot De passe ---- */


/*------------------------------------- validateName ----------------------------------------------*/


		function validateNom() {
		    const name     =  document.getElementById("nomnew"); 
		   const re = /^[ a-zA-Z]{2,10}$/;
		   var resultat ;
		
		   if(!re.test(name.value)){
		   name.style.borderBottom="solid red"
		   resultat = false ;
		   } else {
		        name.style.borderBottom="solid green"
		    resultat = true; 
		   }
		   return resultat;
		 }
		
		/*------------------------------------- validatePrenom ----------------------------------------------*/ 
		
		function validatePrenom() {
		   const prenom   =  document.getElementById('prenomnew');
		   const ree = /^[ a-zA-Z]{2,10}$/;
		   var resultat ;
		
		   if(!ree.test(prenom.value)){  
		
		        prenom.style.borderBottom="solid red";
		        resultat = false ; 
		   
		   } else {
		        prenom.style.borderBottom="solid green"
		        resultat = true ; 
		   }
		   return  resultat ; 
		 }
		
		/*------------------------------------- validateEmail ----------------------------------------------*/ 
		
		function validateEmail() {
		 const email = document.getElementById('loginnew');
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
		
		
		
		
		/*------------------------------------- validateCin ----------------------------------------------*/ 
		
		function validateCin(){
		
		const  cin =  document.getElementById('cinnew'); 
		const re = /^[0-9A-Z]{5,8}$/;
		var resultat ;
		
		if(!re.test(cin.value)){
		    
		     cin.style.borderBottom="solid red"
		     resultat = false ; 
		}
		else {
		    cin.style.borderBottom="solid green"
		     resultat = true ; 
		
		}
		return  resultat ; 
		
		}
		
		
		 
		
		/*------------------------------------- validateTel ----------------------------------------------*/ 
		
		function validateTel(){
		
		const tel =  document.getElementById('telnew'); 
		const num = /^[ +0-9]{10,20}$/;
		var resultat ;
		
		
		   if(!num.test(tel.value)){  
		
		       tel.style.borderBottom="solid red"
		        resultat = false ; 
		   
		   } else {
		       tel.style.borderBottom="solid green"
		        resultat = true ; 
		
		   }
		   return resultat;
		
		}
		
		
		/*------------------------------------- validatePassword ----------------------------------------------*/ 
		
		
		function validatePassword(){
		   
		   const password =  document.getElementById('password'); 
		   var resultat ;
		
		   if (password.value.length>9) {
			   
		       password.style.borderBottom="solid green"
		        resultat = true ; 
		   }
		   
		   else{
			   password.style.borderBottom="solid red"
		   	   resultat = false ; 
		   }
		   return resultat;
		
		}
		
		
		/*------------------------------------- validateDateNaissance ----------------------------------------------*/ 
		
		function validateDateDeNaissance(){
		    const  date =  document.getElementById('datenaissancenew'); 
		    var resultat ;
		    
		    if (date.value.length == 0) {
		        
		         date.style.borderBottom="solid red"
		         resultat = false ; 
		    }
		    else {
		        date.style.borderBottom="solid green"
		         resultat = true ; 
		    
		    }
		    return  resultat ; 
		}
		/*------------------------------------- validateAdress ----------------------------------------------*/ 
		function validateAdress(){
		    const  cin =  document.getElementById('adressenew'); 
		    var resultat ;
		    
		    if (cin.value.length == 0) {
		        
		         cin.style.borderBottom="solid red"
		         resultat = false ; 
		    }
		    else {
		        cin.style.borderBottom="solid green"
		         resultat = true ; 
		    
		    }
		    return  resultat ; 
		}
		
		/*--------------------- Enregistrert les nouveaux coordonnées ----------------------*/ 
		
			function EnregistrerCoordonnee(){
			if ((validateNom()== true) && (validatePrenom()== true) && (validateEmail()== true) && (validateCin()== true) && (validateTel()== true ) && ( validatePassword()== true) && ( validateAdress()== true) && ( validateDateDeNaissance()== true) ) {
		
				 var nom      = document.getElementById('nomnew').value;
				 var prenom   = document.getElementById('prenomnew').value;
				 var login    = document.getElementById('loginnew').value;
				 var cin      = document.getElementById('cinnew').value; 
				 var tel      = document.getElementById('telnew').value; 
		         var password = document.getElementById('password').value;
		         var date      = document.getElementById('datenaissancenew').value;
		         var adress   = document.getElementById('adressenew').value;
			 	$.post("modifiercoordonnee",{"nom":nom,"prenom":prenom,"login":login,"cin":cin,"tel":tel,"password":password,"date":date,"adress":adress,"operation":"Modifier_Coordonnee"},
							function(data){
			 		if(data == -1){
			 			swal({
			 				  title: "Erreur d'enregistrement !",
			 				  text: "Email utilise deja existe!",
			 				  icon: "warning",
			 				  button: "Ok!",
			 				});
			 		}
			 		else if(data == -2){
			 			document.getElementById("password").style.borderBottom="solid red";
			 		}
			 			 		
			 		else{
			 			swal({
			 				  title: "",
			 				  text: "Vos modifications bien enregistrer!",
			 				  icon: "success",
			 				  button: "Ok !",
			 				}).then(function(isConfirm) {
			 					  if (isConfirm) {
			 						     document.location.href = 'http://localhost:8080/blooddonation/profil';
			 						  } else {
			 						    //if no clicked => do something else
			 							 document.location.href = 'http://localhost:8080/blooddonation/profil';
			 						  }
			 						});
			 			
		
			 		}
			 	 });
		
				}
			else{
			 	var tab=[validateNom(),validatePrenom(),validateEmail(),validateCin(),validateTel(), validatePassword(),validateAdress(),validateDateDeNaissance()];
			}
			
			}	
			
		/*--------------------- Annuler les nouveaux coordonnées ----------------------*/ 
		function annuler(){
		  document.location.href = 'http://localhost:8080/blooddonation/profil';
			}
		
