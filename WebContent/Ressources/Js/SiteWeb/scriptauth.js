  /*----------------------------- Début Validation D'Authentification  -------------------------------*/

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


function validateEmailAuth() {
    const email = document.getElementById('email');
    var resultat ;
   
    if((user_name(email.value) == true) && (arobace(email.value) == 1) && (alternative(email.value) == true) && (extension(email.value) == true)){
  
       email.style.borderBottom = " solid  green";
        resultat = true ; 
  
    } else {
              
      email.style.borderBottom = " solid  #ef767b";
       resultat = false ; 
    }
  
     return resultat; 
  }
  
   
  
  function validatePasswordAuth(){
     
     const password =  document.getElementById('password'); 
     var resultat ;
  
     if (password.value.length>3) {
         password.style.borderBottom = " solid  green";
          resultat = true ; 
     }
     
     else{
  
          password.style.borderBottom = " solid  #ef767b";
           resultat = false ; 
     }
     return resultat;
  
  }
  
  function validationAuthetification(){
		  document.getElementById("p").style.display = "none";
	      document.getElementById("l").style.display = "none";
		if ((validateEmailAuth() == true) && ( validatePasswordAuth() == true) ) {
			
			var a = document.getElementById('email').value;
			var b = document.getElementById('password').value;
			
			$.post("authentification",{"login":a,"password":b,"operation":"authentification"},
					function(data){
				if(data == "email"){
					document.getElementById('email').style.borderBottom = "1px solid  #ef767b";
					document.getElementById("l").style.display = "block";
				}
				else if(data == "password"){
					
					document.getElementById('password').style.borderBottom = "1px solid  #ef767b";
					document.getElementById("p").style.display = "block";
				}
				else{
					if(data == "utilisateur"){
						document.location.href = 'http://localhost:8080/blooddonation/accueil';
					}
					else if(data == "expert" ||data == "admin" ) {
						document.location.href = 'http://localhost:8080/blooddonation/statistique';
					}
					else{
						alert("erreur");
					}
					
				}
			  })

		}

		else{
			if(validateEmailAuth() == true){
				document.getElementById('password').style.borderBottom = "1px solid  #ef767b";
				}
			
			else if(validatePasswordAuth() == true){
				
				document.getElementById('email').style.borderBottom = "1px solid  #ef767b";
			}
			else {
				document.getElementById('password').style.borderBottom = "1px solid  #ef767b";
				document.getElementById('email').style.borderBottom = "1px solid  #ef767b";
			}
			
		}
	}

/*----------------------------- Fin Validation D'Authentification --------------------------------------*/


window.onload=function(){

    document.getElementById('email').addEventListener('blur', validateEmailAuth);
    document.getElementById('password').addEventListener('blur', validatePasswordAuth);
	document.getElementById('authetification').addEventListener('click', validationAuthetification); 
    
    }