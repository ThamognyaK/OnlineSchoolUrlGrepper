//for reading input in console
const readline = require("readline");
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});
// contains urls
const url = {
    math: "https://zoom.us/__",
    chem: "https://meet.google.com/__",
    phy: "https://meet.google.com/__",
    spanish: "id: jdfas ; passwd: dfsj",
}
//input from console
rl.question("Class now: ", function (class_now) {
    //if statement to console log answer
    if (class_now == "math") {
        console.log(`${url.math}`)
    }
    else if (class_now == "chem" || class_now == "phy") {
        console.log(`${url.chem}`)
    }
    else if (class_now == "spanish") {
        console.log(`${url.spanish}`)
    }
    else {
        console.log("error, try again")
    }
    //close reading line
    rl.close();
});
