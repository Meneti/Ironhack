
var numbers = '80:70:90:100';



function averageColon (numbers) {
	var newArray =  numbers.split(":")
	var sum = newArray.reduce(function(x,y) {
		return parseInt(x)+parseInt(y);

	});
return sum/newArray.length
}









console.log( averageColon(numbers) === 85 );

// split array
// sum numbers