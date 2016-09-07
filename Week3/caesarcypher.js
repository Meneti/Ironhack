


function CaesarCipher(str, num) {

    str = str.toLowerCase();
    var result = '';
    var charcode = 0;

    for (i = 0; i < str.length; i++) {
        charcode = (str[i].charCodeAt()) + num;
        result += String.fromCharCode(charcode);
    }
    return result;

}
                               
console.log(CaesarCipher('hello', 2));
