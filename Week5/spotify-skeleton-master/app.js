	$(document).ready(function () {

	$(".js-search").on("click", searchTrack);
	$(".btn-play").on("click", playTrack);
		

	

	function searchTrack (theEvent) {
			theEvent.preventDefault();

		var track = $(".js-track-search").val(); 

		$.ajax ({
			type: "GET",
			url: `https://api.spotify.com/v1/search?type=track&query=${track}`,
			success: showTrack,
			error: handleError,
			});
	};

function showTrack (response) {

		var theTrack = response.tracks.items[0];
		$('.js-track-list').empty();
		console.log(theTrack);


		var title= theTrack.name
		$(".title").text(title);

		var artist= theTrack.artists[0].name
		$(".author").text(artist);

		if (theTrack.album.images.length > 0) {
		var image= theTrack.album.images[0].url
				$(".coverimage").attr("src",image);
			};

		var audio= theTrack.preview_url
		$(".playaudio").attr("src",audio);
		console.log(audio);

		
		
	};

	function playTrack (theEvent) {
		theEvent.preventDefault();
	
	$('.playaudio').trigger('play');

	// $('.playaudio').trigger('pause');
};

	
	

	










	function handleError (error) {
	console.log("Error!");
	console.log(error.responseText);
	};
	


	});