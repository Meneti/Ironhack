

"use strict";

var fs = require("fs");

fs.readFile("movies.txt", "utf8", function (theError, movieFileContents) {
if (theError === null) {
var moviesArray = movieFileContents.split("\n");
console.log(moviesArray);
}
else {
	console.log("Oh no! Error.")
	console.log( theError);
}
});

var read =  require("read");

var theOptions = { prompt: "what is your name?" };

function greetUser (theError, givenName) {
	console.log(`Hello, ${givenName}.`);



var options2 = { prompt: "What is your date of birth?"}

function displayBirthday (theError, birthDate) {
	console.log(`Your were born: ${birthDate}`);
}

read(options2, displayBirthday);
}
read(theOptions,greetUser);

function shout () {
	console.log("5 seconds");
}
setTimeout(shout, 5000);

console.log("");
console.log("END OF PROGRAM");
console.log("");

var read = require("read");



