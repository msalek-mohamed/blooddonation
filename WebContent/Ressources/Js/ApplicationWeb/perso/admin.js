function Supprimer(){
	var idUser = this.parentElement.parentElement.children[0].textContent;
	var tr = this.parentElement.parentElement;
	
	swal({
        text: "vous voulez vraiment supprimer cet utilisateur!",
        buttons: ["Annuler", true],
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            //backend ici supprimer ....
           $.post("consulterutilisateur",{"idSupp":idUser,"operation":"supprimer"},function(data){
              if(data == 1){
            	 tr.remove();
            	  
                  swal("L'utilisateur a ete bien supprimer!", {
                  icon: "success",
                });
                  
                  
              }
              else{
            	  swal("l'utilisateur n'est pas supprimer!", {
                      icon: "error",
                    });
              }
           
           });
        
        } 
      });
}


function Vusialiser(){
	var idUtilisateur = this.parentElement.parentElement.children[0].textContent;
	document.location.href = 'http://localhost:8080/blooddonation/visualiserutilisateur?idUtilisateur='+idUtilisateur;
}






window.onload=function(){

    var sup = document.getElementsByClassName("supp");
    for (var i = 0; i < sup.length; i++) {
		sup[i].addEventListener('click', Supprimer);
	}

    var view = document.getElementsByClassName("voir");
    for (var i = 0; i < view.length; i++) {
		view[i].addEventListener('click', Vusialiser);
	}
       
  }