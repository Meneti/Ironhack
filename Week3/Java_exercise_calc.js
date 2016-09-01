
var numbers = '80:70:90:100';
var numbers1 = ''
var numbers2 = '80&70&90&100'
var numbers3 = '80:70&90:100'



function averageColon (numbers) {
	var newArray =  numbers.split(/[^0-9]/)
	var sum = newArray.reduce(function(x,y) {
		return parseInt(x)+parseInt(y);

	});
return sum/newArray.length
}



console.log( averageColon(numbers) === 85 );
console.log( averageColon(numbers1) === 0);
console.log( averageColon(numbers2) === 85)
console.log( averageColon(numbers3) === 85)
