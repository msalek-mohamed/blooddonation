	function Annuler(){
		var idDonation = this.parentElement.parentElement.children[0].textContent;
		var tr =  this.parentElement.parentElement;
		swal({
        text: "Vous voulez vraiment annuler cette donation!",
        buttons: ["Annuler", true],
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            //backend ici supprimer ....
        	$.post("donations",{"idDonation":idDonation,"operation":"AnnulerDonation"},
    				function(data){
              if(data == 1){
            	  tr.remove();           	  
                  swal("Donation bien annuler!", {
                  icon: "success",
                });
                  
                  
              }
              else{
            	  swal("Donation n'est pas annuler!", {
                  icon: "error",
                });
              }
           
           });
        
        } 
      });
	}
	
	function Valider(){
		var idDonation = this.parentElement.parentElement.children[0].textContent;
		var tr =  this.parentElement.parentElement;
		swal({
        text: "Vous voulez vraiment valider cette donation!",
        buttons: ["Annuler", true],
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            //backend ici supprimer ....
        	$.post("donations",{"idDonation":idDonation,"operation":"ValiderDonation"},
    				function(data){
              if(data == 1){
            	  tr.remove();           	  
                  swal("Donation bien valider!", {
                  icon: "success",
                });
                  
                  
              }
              else{
	           swal("Donation n'est pas valider!", {
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
			sup[i].addEventListener('click', Annuler);
		}
	
	    var valide = document.getElementsByClassName("valide");
	    for (var i = 0; i < valide.length; i++) {
			valide[i].addEventListener('click', Valider);
		}
	     
        var view = document.getElementsByClassName("voir");
	    for (var i = 0; i < view.length; i++) {
			view[i].addEventListener('click', Visualiser);
		}
  
	  }