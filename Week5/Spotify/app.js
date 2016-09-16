$(document).ready(function () {

	$(".js-search").on("click", searchArtist);
	
	
	function searchArtist (theEvent) {
			theEvent.preventDefault();

		var searchterm = $(".js-artist-search").val(); 


		$.ajax ({
			type: "GET",
			url: `https://api.spotify.com/v1/search?type=artist&query=${searchterm}`,
			success: showArtist,
			error: handleError,
			});
	};
	
	function showArtist (response) {
		console.log(response);
		var artistArray = response.artists.items;
		$('.js-artist-list').empty();
		console.log(artistArray);

		artistArray.forEach(function (theArtist) {

			if (theArtist.images.length > 0) {
				var html = `<button data-id="${theArtist.id}" class= "js-album-list"> <p> ${theArtist.name} </p> <img src = "${theArtist.images[0].url}" width = "160"> </button>`;
				$('.js-artist-list').append(html);
			}
		$(".js-albums-list").on("click", searchAlbums);
		});
	};

function handleError (error) {
	console.log("Error!");
	console.log(error.responseText);
	};
	


function searchAlbums (theEvent) {
	theEvent.preventDefault();
	console.log("artist clicked");
	 var artistId = $(theEvent.currentTarget).data("id");
	 console.log('ID get is working: ${artistID}')
		$.ajax ({
			type: "GET",
			url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
			success: showAlbums,
			error: handleError,
			});
};
	
function showAlbums (response) {
	
	var artistArray = response.artists.items;
	$('.js-albums-list').empty();

	artistArray.forEach(function (theArtist) {

		if (theArtist.albums.length > 0) {
			var html = `<button id="${theArtist.id}" class= "js-album-list"> <p> ${theArtist.name} </p> <img src = "${theArtist.images[0].url}" width = "160"> </button>`;
			$('.js-artist-list').append(html);
		}

});



};




