/*------------------------------------- validateName ----------------------------------------------*/


function validateNom() {
    const name     =  document.getElementById("nomnew"); 
   const re = /^[a-zA-Z]{2,10}$/;
   var resultat ;

   if(!re.test(name.value)){
   name.style.borderBottom ="solid red";
   resultat = false ;
   } else {
        name.style.borderBottom ="solid green";
    resultat = true; 
   }
   return resultat;
 }

/*------------------------------------- validatePrenom ----------------------------------------------*/ 

function validatePrenom() {
   const prenom   =  document.getElementById('prenomnew');
   const ree = /^[a-zA-Z]{2,10}$/;
   var resultat ;

   if(!ree.test(prenom.value)){  

        prenom.style.borderBottom ="solid red";
        resultat = false ; 
   
   } else {
        prenom.style.borderBottom ="solid green";
        resultat = true ; 
   }
   return  resultat ; 
 }

/*------------------------------------- validateEmail ----------------------------------------------*/ 

function validateEmail() {
 const email = document.getElementById('loginnew');
 var resultat ;

 if((user_name(email.value) == true) && (arobace(email.value) == 1) && (alternative(email.value) == true) && (extension(email.value) == true)){
     email.style.borderBottom ="solid green";
     resultat = true ; 

 } else {
           
     email.style.borderBottom ="solid red";
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
var resultat ;

if (cin.value.length == 0) {
    
     cin.style.borderBottom ="solid red";
     resultat = false ; 
}
else {
    cin.style.borderBottom ="solid green";
     resultat = true ; 

}
return  resultat ; 

}

/*------------------------------------- validateTel ----------------------------------------------*/ 

function validateTel(){

const tel =  document.getElementById('telnew'); 
const num = /^[0-9]{8,13}$/;
var resultat ;


   if(!num.test(tel.value)){  

        tel.style.borderBottom ="solid red";
        resultat = false ; 
   
   } else {
       tel.style.borderBottom ="solid green";
        resultat = true ; 

   }
   return resultat;

}


/*------------------------------------- validatePassword ----------------------------------------------*/ 

function validatePassword(){
   
   const password =  document.getElementById('password'); 
   var resultat ;

   if (password.value.length>9) {
       password.style.borderBottom ="solid green";
        resultat = true ;
        
   }
   
   else{

       password.style.borderBottom ="solid red";
        resultat = false ;

     
   }
   return resultat;

}

/*------------------------------------- validateAge ----------------------------------------------*/ 

function validateAge(){

const  age =  document.getElementById('age'); 
var resultat ;

if (age.value.length == 0) {
    
     age.style.borderBottom ="solid red";
     resultat = false ; 
}
else {
    age.style.borderBottom ="solid green";
     resultat = true ; 

}
return  resultat ; 

}


/*------------------------------------- validateAdresse ----------------------------------------------*/ 

function validateAdresse(){

const  adresse =  document.getElementById('adresse'); 
var resultat ;

if (adresse.value.length == 0) {
    
     adresse.style.borderBottom ="solid red";
     resultat = false ; 
}
else {
    adresse.style.borderBottom ="solid green";
     resultat = true ; 

}
return  resultat ; 

}
/*--------------------- Enregistrert les nouveaux coordonnées ----------------------*/ 

function Enregistrer(){
if ((validateNom()== true) && (validatePrenom()== true) && (validateEmail()== true) && (validateCin()== true) && (validateTel()== true ) && ( validatePassword()== true) )  {

	 var nom      = document.getElementById('nomnew').value;
	 var prenom   = document.getElementById('prenomnew').value;
	 var login    = document.getElementById('loginnew').value;
	 var cin      = document.getElementById('cinnew').value; 
	 var tel      = document.getElementById('telnew').value; 
	 var password = document.getElementById('password').value;
     var date      = document.getElementById('age').value; 
	 var adresse = document.getElementById('adresse').value;
 	$.post("ajouterexpert",{"nom":nom,"prenom":prenom,"login":login,"cin":cin,"tel":tel,"password":password,"date":date,"adresse":adresse,"operation":"Ajouter"},
				function(data){
        	if(data == 1){
	           swal("Expert bien ajoute ", {
                  icon: "success",
                });
            document.location.href = 'http://localhost:8080/blooddonation/consulterexpert';   
        	}

    });
}
}
/*--------------------- Annuler les nouveaux coordonnées ----------------------*/ 
function Annuler(){
    	swal({
            text: "Vous voulez vraiment annule l' ajout de cet expert!",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              swal("Ajout de l' est annuler", {
                icon: "success",
              });
              
              	document.location.href = 'http://localhost:8080/blooddonation/consulterexpert';

            } 
          });
    }