$(document).ready(function () {

	$(".js-search").on("click", searchArtist);
	$(".js-search").on("click", showArtist);

	
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
			var artistArray = response.artists.items;

			console.log(response);

			artistArray.forEach(function (theArtist) {
		var html = `
			<li>
			<p> ${theArtist.name} </p>
			<img src = "${theArtist.images[0].url}">
			 </li>
			 `;
		$('.js-artist-list').append(html);
	});
	};

function handleError (error) {
	console.log("Error!");
	console.log(error.responseText);
	};
	



function showAlbums (theEvent) {

	var artistId = $(theEvent.currentTarget).data("artist-id");

	var x = `
		<li>
			<h2>${theArtist.name}</h2>
			<button class = "js-album-search"
			data-x = "${theArtist.id}">
			see ${theArtist.id}
			</button>
		</li>
			`;


$.ajax ({
type: "GET",
url: `https://api.spotify.com/v1/artists/${artistId}/albums/`,
success: showAlbums,
error: handleError,
});
};

});


