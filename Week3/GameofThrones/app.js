
"use strict";

var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    var star = "*"

    episodes.forEach (function(x,y) {
  	var y = Math.round(x.rating);
 //  	var ratings = x.rating
	// var newRatings = ratings.sort(function(a,b){
 //  		return a-b
  	
    console.log(`Title: ${x.title}  Episode#: ${x.episode_number}  ${x.description}  Rating: ${x.rating} ${star.repeat(y)}`);
});
}

episodes.forEach (function




fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);


// episodes.sort(function(y)