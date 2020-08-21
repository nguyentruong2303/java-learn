//header-menu


//end-menu
//change color menu special
function changeColor(index){
    var as = document.getElementsByClassName("aColor");
    for(var i = 0; i < as.length; ++i) {
        as[i].style.color = "red";
    }
}
// function colorOrange(){
//     document.getElementById("v-pills-profile-tab").style.backgroundColor = "red";
// }
// function returnColor() {
//     document.getElementById("v-pills-profile-tab").style.backgroundColor= "white";
// }
// var aRed = document.getElementById("v-pills-profile-tab").onmouseover.backgroundColor = "d65106";

//end change color menu special

//click menu special
function showMenu(divMenu){
    var idMenu = document.getElementsByClassName("bigMenuSpecial")
    for(var i = 0; i < idMenu.length ; ++i ){
        if( idMenu[i].id == divMenu){
            if(idMenu[i].style.display == 'contents'){
                // divMenu[i].style.backgroundColor = '#d65106';
                idMenu[i].style.display = 'none';
                // divMenu[i].style.backgroundColor = 'red';
               
            }
            else {
                idMenu[i].style.display = 'contents';
                // divMenu[i].style.backgroundColor = '#d65106';
            }
        }
        else {
            idMenu[i].style.display = 'none';
            
        }
    }
}


//end click menu special

//Start Gallery


function changeSize(divTrans){
   picC = document.getElementsByClassName("pic-change");
   for(var k = 0 ; k < picC.length; ++k){
      
       if(picC[k].id == divTrans){
        picC[k].style.transform = 'scale(1.09)';
        picC[k].style.transition = 'all 0.5s';
        picC[k].style.border ='none';
    
       } else {
        picC[k].style.transform = 'scale(1)';
        picC[k].style.transition = 'all 0.5s';
        
        
       }
   }
}
function returnSize(divTrans){
    picC = document.getElementsByClassName("pic-change");
    for(var l = 0 ; l < picC.length; ++l){
        if(picC[l].id == divTrans){
            picC[l].style.transform = 'scale(1)';
            picC[l].style.border = '2px solid #d65106';
            //picC[l].style.transition = 'all 1s';


   
        }
        // else {
        //     picC[k].style.transform = 'scale(1.09)';
        //     picC[k].style.transition = 'all 1s';
        //     picC[k].style.border ='none';
          
        // }
    }
}



//End Gallery


