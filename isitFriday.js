/* Simple Node.js Program */
console.log("Is it Friday yet..?")

var currentDate = new Date()

if (currentDate.getDay() == 5){
    console.log("Yep!");
} else {
    console.log("Nope."); 
}