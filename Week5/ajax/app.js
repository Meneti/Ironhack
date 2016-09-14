console.log("We are GO!");

$(document).ready(function () {

	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-add-kylo-ren").on("click", addKylo);
	$(".js-add-new-character").on("click", addNewCharacter);



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

function addKylo () {
	var newCharacter = {
		name: "Chewbacca",
		occupation: "Muscle",
		weapon: "Bowcaster"
	};

	$.ajax({
	type: "POST",
	url:"http://ironhack-characters.herokuapp.com/characters",
	data: newCharacter,
	success: updateList,
	error:handleError
	});
	
}

function updateList (response) {
	console.log("Success!");
	console.log(response);
};

function addNewCharacter (theEvent) {
		theEvent.preventDefault();

		console.log("Add new Character click");

		var newCharacterForm = {
		weapon: $(".js-weapon").val(),
		name: $(".js-name").val(),
		occupation: $(".js-occupation").val()
	};

		$.ajax({
	type: "POST",
	url:"http://ironhack-characters.herokuapp.com/characters",
	data: newCharacterForm,
	success: updateList,
	error:handleError
	});



		// console.log(`Weapon: ${weapon}`);
}



});