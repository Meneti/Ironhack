console.log("We are go!");

$(document).ready(function (){
    $(".js-ing-button").on("click", addIngredients);
});

function addIngredients (theEvent) {
	theEvent.preventDefault();
	var ingredientID = $(this).attr("id");
	var sandwichID = $(this).data("sandwich");
	console.log("Ingredient clicked");
	console.log(`ingredientID: ${ingredientID}`)

	var ing = { ingredient_id: ingredientID };

	$.ajax({
		type: "POST",
		url: `/api/sandwiches/${sandwichID}/ingredients/add`,
		    // api/sandwiches/3/            ingredients/add
		data: ing,
		success: showResults,
		// error: handleError


	});

	function showResults (result) {

	console.log("Ingredient clicked 2");
	console.log(result);
	$(".js-ingredient-list").empty();
	result.ingredients.forEach (function (ingredient) {
		$(".js-ingredient-list").append(`<li> Ingredients: ${ingredient.name} ${ingredient.calories} </li>`)
	});

	};
	

};


