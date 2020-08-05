		
		
		function validateEmail() {
		  const email = document.getElementById('email');
		  const re = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/;
		  var resultat;
		
		  if(!re.test(email.value)){
		            email.classList.remove('is-valid');
		            email.classList.add('is-invalid');
		            resultat = false;
		  } else {
		            email.classList.remove('is-invalid');
		            email.classList.add('is-valid');
		            resultat = true;
		  }
		  
		 return resultat
		}
		
		
		
		function validatePassword() { 
		            
		            const password = document.getElementById('password'); 
		            var resultat;   
                if (password.value.length>3) {
			            password.classList.remove('is-invalid');   
		                password.classList.add('is-valid');   
		                resultat = true;
		
		
		                     }
		            else{ 
			           password.classList.remove('is-valid'); 
		               password.classList.add('is-invalid');
		               resultat = false;

		
		                 }
		         return resultat; 
		          }
		        

	  function validateName() {
	    const name = document.getElementById('name');
	    const re = /^[ a-zA-Z]{2,30}$/;
	    var resultat;
	    if(!re.test(name.value)){
	      name.classList.remove('is-valid');
	      name.classList.add('is-invalid');
          resultat = false
	        
	    } else {
	      name.classList.remove('is-invalid');
	      name.classList.add('is-valid');
          resultat = true
	
	    }

       return resultat      

	  }

  function validateName2() {
    const name2 = document.getElementById('name2');
    const ree = /^[ a-zA-Z]{2,30}$/;
    var resultat;
    if(!ree.test(name2.value)){
      name2.classList.remove('is-valid');
      name2.classList.add('is-invalid');
      resultat = false 
    } else {
      name2.classList.remove('is-invalid');
      name2.classList.add('is-valid');
      resultat = true

    }
  return resultat
  }


  function validateAdresse() {
    const adresse = document.getElementById('adresse');
    const ree = /^[ +,0-9a-zA-Z]{10,100}$/;
    var resultat;

    if(!ree.test(adresse.value)){
      adresse.classList.remove('is-valid');
      adresse.classList.add('is-invalid');
      resultat = false
        
    } else {
      adresse.classList.remove('is-invalid');
      adresse.classList.add('is-valid');
      resultat = true

    }
  return resultat
  }


  function check_pass() {
	var resultat;
    if (document.getElementById('password').value ==
        document.getElementById('confirm_password').value) {


        confirm_password.classList.remove('is-invalid');
        confirm_password.classList.add('is-valid');
        resultat = true

    } else {
        confirm_password.classList.remove('is-valid');
        confirm_password.classList.add('is-invalid');
        resultat = false
    }

 return resultat
}


  function validateCin() {
    const cin = document.getElementById('cin');
    const re = /^[0-9A-Z]{5,8}$/;
    var resultat;

    if(!re.test(cin.value)){
      cin.classList.remove('is-valid');
      cin.classList.add('is-invalid');
      resultat = false 
    } else {
      cin.classList.remove('is-invalid');
      cin.classList.add('is-valid');
      resultat = true

    }
  
   return resultat 
 
  }
  
  
  function validateTele(){
  
   const tel =  document.getElementById('tel'); 
   const num = /^[ +0-9]{10,20}$/;
   var resultat;
      if(!num.test(tel.value)){  
  
        tel.classList.remove('is-valid');
        tel.classList.add('is-invalid');
        resultat = false
      
      } else {
        tel.classList.remove('is-invalid');
        tel.classList.add('is-valid');
        resultat = true
  
      }
     
    return resultat
  }

  function validateChoix(){
	var sex = document.getElementById('pet-select').options[document.getElementById('pet-select').selectedIndex].value;
	
	if(sex == "genre"){
		document.getElementById('pet-select').classList.remove('is-valid');
        document.getElementById('pet-select').classList.add('is-invalid');
        resultat = false
	}
	else{
		document.getElementById('pet-select').classList.remove('is-invalid');
        document.getElementById('pet-select').classList.add('is-valid');
        resultat = true
	}
	
	return resultat	      
}



	function Inscrir(){

		if((validateEmail() == true) && (validatePassword() == true) && (validateName() == true) && (validateName2() == true) && (validateAdresse()== true) && (check_pass()==true) && (validateCin()==true) && (validateTele() == true) && ( validateChoix()== true)){
        var nom =  document.getElementById('name').value;
        var prenom = document.getElementById('name2').value;
		var login =  document.getElementById('email').value;
		var password = document.getElementById('password').value;
		var cin = document.getElementById('cin').value;
		var tel = document.getElementById('tel').value;
		var adresse = document.getElementById('adresse').value;
		var date = document.getElementById('date').value;
		var sex = document.getElementById('pet-select').options[document.getElementById('pet-select').selectedIndex].value;	
  
		   $.post("inscription",{"nom":nom,"prenom":prenom,"login":login,"password":password,"cin":cin,"tel":tel,"adresse":adresse,"date":date,"sex":sex},
								function(data){
							if(data == 1){
								swal({
			 				  title: "",
			 				  text: "Votre inscription bien enregistrer!",
			 				  icon: "success",
			 				  button: "Ok !",
			 				}).then(function(isConfirm) {
			 					  if (isConfirm) {
			 						 document.location.href = 'http://localhost:8080/blooddonation/accueil';
			 						  } else {
			 						    //if no clicked => do something else
			 							 document.location.href = 'http://localhost:8080/blooddonation/accueil';
			 						  }
			 						});
							}
						})	
		
				}
				else{
					 var Tab = [validateEmail(),validatePassword(),validateName(),validateName2(),validateAdresse(),check_pass(),validateCin(),validateTele(),validateChoix()];
				}
			}



window.onload=function(){

    document.getElementById('email').addEventListener('blur', validateEmail);
	document.getElementById('password').addEventListener('blur', validatePassword);
	document.getElementById('name').addEventListener('blur', validateName);
	document.getElementById('name2').addEventListener('blur', validateName2);
	document.getElementById('adresse').addEventListener('blur', validateAdresse);
	document.getElementById('cin').addEventListener('blur', validateCin);
	document.getElementById('tel').addEventListener('blur', validateTele);
	document.getElementById('inscription').addEventListener('click', Inscrir); 
    
    }
  
  