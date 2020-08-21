

function showSidebar(divUp) {
    var sb = document.getElementsByClassName("sidebar-menu");
    for(var i = 0 ; i < sb.length ; ++i){
      if(sb[i].id == divUp) {
        sb[i].style.height = "150px";
      }
      else {
        sb[i].style.height = "0px";
      }
    }
 
}
function hideSidebar(divUp){
  var sb = document.getElementsByClassName("sidebar-menu");
  for(var i = 0 ; i < sb.length ; ++ i){
    if(sb[i].id == divUp){
      sb[i].style.height = "0px";
    }
  //   else {
  //     sb[i].style.height = "150px";
  //   }
  }
}