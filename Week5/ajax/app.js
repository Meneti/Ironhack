console.log("We are GO!");

$(document).ready(function () {

	$(".js-fetch-characters").on("click", fetchCharacters);


function fetchCharacters () {
	console.log("Fetch Characters Click");

	$.ajax({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError
		});

};

function showCharacters (response) {
	var charactersArray = response;

	charactersArray.forEach(function (theCharacter) {
		var html = `
			<li>
			<h2> ${theCharacter.name} </h2>
			 </li>
			 `;
		$('.js-character-list').append(html);
	});
	
}

function handleError (error) {
	console.log("Error!");
	console.log(error.responseText);
}



});