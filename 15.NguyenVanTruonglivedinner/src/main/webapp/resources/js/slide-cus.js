// var slideIndex1 = 0;
// showSlides1();

// function showSlides1() {
//   var k;
//   var slides1 = document.getElementsByClassName("slides-cus");
//   var dots1 = document.getElementsByClassName("dot1");
//   for (k = 0; k < slides1.length; k++) {
//     slides1[k].style.display = "none";  
//   }
//   slideIndex1++;
//   if (slideIndex1 > slides1.length) {slideIndex1 = 1}    
//   for (k = 0; k < dots1.length; k++) {
//     dots1[k].className = dots[k].className.replace(" active", "");
//   }
//   slides1[slideIndex1-1].style.display = "block";  
//   dots1[slideIndex1-1].className += " active";
//   setTimeout(showSlides1, 2000); // Change image every 2 seconds
// }
sli = document.getElementsByClassName("slides-cus");
function prevCus () {

}
function nextCus () {

}
function showSlideCus() {
    for( var s = 0; s < sli.length; ++s){
        if(sli[s]){}
    }
}
