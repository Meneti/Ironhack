// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
PokemonApp.PokemonComponent = class {
	constructor (pokemonUri) {
		this.id = PokemonApp.idFromUri( pokemonUri );
	}

	render () {
		console.log(`PokemonComponent rendering pokemon #${this.id}`);

		$.ajax({
			type: "GET",
			url: `/api/v1/pokemon/${this.id}`,
			success: PokemonApp.showPokemonModal,
			error: PokemonApp.handleError
		});
	}
};


PokemonApp.showPokemonModal = function (result) {
	console.log("Pokemon Info:");
	console.log(result);

	console.log(`Name: ${result.name}`);
	console.log(`Number: ${result.pkdx_id}`);
	console.log(`Height: ${result.height}`);
	console.log(`Weight: ${result.weight}`);

	$(".js-pokemon-modal").modal("show");
	$(".js-poke-name").html(result.name);
	$(".js-poke-number").html(result.pkdx_id);
	$(".js-poke-height").html(result.height);
	$(".js-poke-weight").html(result.weight);
	$(".js-poke-hitpoints").html(result.hp);
	$(".js-poke-attack").html(result.attack);
	$(".js-poke-defense").html(result.defense);
	$(".js-poke-specialattack").html(result.sp_atk);
	$(".js-poke-specialdefense").html(result.sp_def);
	$(".js-poke-speed").html(result.speed);

	var theTypes = (result.types)[0].name 


	if ( (result.types)[1] !== undefined) {
			theTypes += ", "  + result.types[1].name
	}
	$(".js-poke-types").html(theTypes);
};

PokemonApp.handleError = function (theError) {
	console.log("Pokemon Component Error");
	console.log(theError.responseText);
};

PokemonApp.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];

};

$(document).ready(function () {

	$(".js-show-pokemon").on("click", function (theEvent) {
		console.log("CLICK!");

		var theUri = $(theEvent.currentTarget).data("pokemon-uri");

		var pokeComponent = new PokemonApp.PokemonComponent( theUri );
		pokeComponent.render();
		
	});



});