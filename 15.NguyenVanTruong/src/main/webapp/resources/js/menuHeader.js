function showMenuHeader(divId){
    
    divs = document.getElementsByClassName("header-submenu");
 
   
     for (var d = 0; d < divs.length ; ++d){
         if(divs[d].id == divId){
             if(divs[d].style.display == 'block'){
                (divs[d].style.display = 'none');
                 divs[d].style.position = 'absolute';
                divs[d].style.backgroundColor = '#fff';
             }
             else {
                 (divs[d].style.display ='block');
                 divs[d].style.position = 'absolute';
                 divs[d].style.backgroundColor = '#fff';
             }
         }
         else {
             divs[d].style.display = 'none';
             divs[d].style.position = 'absolute';
             divs[d].style.backgroundColor = '#fff';
         }
 
     }
 }