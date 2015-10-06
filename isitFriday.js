/* Logic inspired by http://isitfridayyet.net/ */
console.log("Is it Friday yet..?")

var currentDate = new Date()

if (currentDate.getDay() == 5){
    setTimeout(function(){console.log("Yep!");}, 1500);
} else {
    setTimeout(function(){console.log("Nope.");}, 1500);
}
