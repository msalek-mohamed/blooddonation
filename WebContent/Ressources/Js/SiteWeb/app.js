

$(document).ready(function(){
    $('.login-info-box').fadeOut();
    $('.login-show').addClass('show-log-panel');
});


$('.login-reg-panel input[type="radio"]').on('change', function() {
    if($('#log-login-show').is(':checked')) {
        $('.register-info-box').fadeOut(); 
        $('.login-info-box').fadeIn();
        
        $('.white-panel').addClass('right-log');
        $('.register-show').addClass('show-log-panel');
        $('.login-show').removeClass('show-log-panel');
        
    }
    else if($('#log-reg-show').is(':checked')) {
        $('.register-info-box').fadeIn();
        $('.login-info-box').fadeOut();
        
        $('.white-panel').removeClass('right-log');
        
        $('.login-show').addClass('show-log-panel');
        $('.register-show').removeClass('show-log-panel');
    }
});


document.getElementById('email').addEventListener('blur', validateEmail);
document.getElementById('password').addEventListener('blur', validatePassword);
document.getElementById('name').addEventListener('blur', validateName);
document.getElementById('name2').addEventListener('blur', validateName2);
document.getElementById('email2').addEventListener('blur', validateEmail2);



function validateEmail() {
  const email = document.getElementById('email');
  const re = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/;

  if(!re.test(email.value)){
            email.classList.remove('is-valid');

    email.classList.add('is-invalid');
  } else {
            email.classList.remove('is-invalid');
    email.classList.add('is-valid');
  }
}

function validateEmail2() {
  const email2 = document.getElementById('email2');
  const re = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/;

  if(!re.test(email2.value)){
            email2.classList.remove('is-valid');

    email2.classList.add('is-invalid');
  } else {
            email2.classList.remove('is-invalid');
    email2.classList.add('is-valid');
  }
}

function validatePassword() { 
            
            const password = document.getElementById('password'); 
            const re =  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
                
            if (!re.test(password.value) )
               { password.classList.remove('is-valid'); 
             password.classList.add('is-invalid');

                     }
            else 
                { password.classList.remove('is-invalid');   

                password.classList.add('is-valid');   


                 } 
  }
        

  function validateName() {
    const name = document.getElementById('name');
    const re = /^[a-zA-Z]{2,10}$/;

    if(!re.test(name.value)){
      name.classList.remove('is-valid');
      name.classList.add('is-invalid');
        
    } else {
      name.classList.remove('is-invalid');
      name.classList.add('is-valid');


    }
  }

  function validateName2() {
    const name2 = document.getElementById('name2');
    const ree = /^[a-zA-Z]{2,10}$/;

    if(!ree.test(name2.value)){
      name2.classList.remove('is-valid');
      name2.classList.add('is-invalid');
        
    } else {
      name2.classList.remove('is-invalid');
      name2.classList.add('is-valid');


    }
  }
