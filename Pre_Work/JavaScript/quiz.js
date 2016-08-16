var user = {}
var responses = []
user.score = 0
var wrong = (responses.length-user.score)

function question1() {

  var name = prompt('What is your name?')
  user.name = name

 }


question1();


function question2() {

  var secondQuestion = prompt('Does null === 0 ? (Yes or No)')

  if (secondQuestion.toLowerCase() === 'yes') {
    secondQuestion = false
  } else if (secondQuestion.toLowerCase() === 'no') {
    secondQuestion = true
  } else {

    alert("Please answer either Yes or No");
    return question2();
  }
  responses.push(secondQuestion); 
}

question2();

function question3() {
  var thirdQuestion = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive, or ScriptyScript?');
  thirdQuestion = thirdQuestion.toLowerCase();
  switch (thirdQuestion) {
  	case "livescript":
  	thirdQuestion = true
  	break;
  	case "java", "javalive", "scriptyscript":
  	thirdQuestion=false
  	break;
  	default: alert("Please choose one of the options");
    return question3();
  }
  responses.push(thirdQuestion); // add the true or false value to the responses array
}

question3();

function question4() {

  var fourthQuestion = prompt('Is NY the capital of US? (Yes or No)')

  if (fourthQuestion.toLowerCase() === 'yes') {
    fourthQuestion = false
  } else if (fourthQuestion.toLowerCase() === 'no') {
    fourthQuestion = true
  } else {

    alert("Please answer either Yes or No");
    return question4();
  }
  responses.push(fourthQuestion); // add the true or false value to the responses array
}

question4();

function question5() {
  var fifthQuestion = prompt('What is the first day of the week?: Monday, Tuesday, Sunday, or Friday?');
  fifthQuestion = fifthQuestion.toLowerCase();
  switch (fifthQuestion) {
  	case "sunday":
  	fifthQuestion = true
  	break;
  	case "monday", "tuesday", "friday":
  	fifthQuestion=false
  	break;
  	default: alert("Please choose one of the options");
    return question5();
  }
  responses.push(fifthQuestion); // add the true or false value to the responses array

}
question5();

function question6() {

  var sixthQuestion = prompt('Are we in 2017? (Yes or No)')


  if (sixthQuestion.toLowerCase() === 'yes') {
    sixthQuestion = false
  } else if (sixthQuestion.toLowerCase() === 'no') {
    sixthQuestion = true
  } else {

    alert("Please answer either Yes or No");
    return question6();
  }
  responses.push(sixthQuestion); 
}
question6();

function question7() {

  var seventhQuestion = prompt('Are we in 2016? (Yes or No)')

  if (seventhQuestion.toLowerCase() === 'yes') {
    seventhQuestion = true
  } else if (seventhQuestion.toLowerCase() === 'no') {
    seventhQuestion = false
  } else {

    alert("Please answer either Yes or No");
    return question7();
  }
  responses.push(seventhQuestion); 
}
question7();


function evaluate(responses) {

//rightanswers
responses.forEach(function(i){
	if (i==true){
	user.score++;
	}
})


}

evaluate(responses);
console.log( " Hey " + user.name + " you got " + user.score + " answers correct and "+ wrong + " answers wrong" );







