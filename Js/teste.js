      
   document.getElementById('botao1').checked = true;
   
   setInterval(function(){
        for(var contador = 1 ; contador < 4; contador++){
            if (contador > 4){
                contador = 0;
            } else {

            }
            document.getElementById(`botao${contador}`).checked = true;
        }
    }, 3500);

