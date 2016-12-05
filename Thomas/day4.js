var array = ["string1", "string2", "string3"];

function lengths(arrayOfStrings) {

  var arrayOfNumbers = [];

  function getStringLength(string) {
    var number = string.length
    arrayOfNumbers.push(number);
  }

  arrayOfStrings.forEach(getStringLength);

  return arrayOfNumbers;

}

lengths(array)

//2. write a JS function called 'transmogrifier'
// This function should accept three arguments, which you can assume will be numbers.
// Your function should return the "transmogrified" result
// (number1 * number2)^number 3


//short but does not explain what you're doing
function transmogrifier(num1, num2, num3) {
  return Math.pow((num1 * num2), num3);
}

transmogrifier(2,3,4);

//names chosen carefully, used more resources but very readable
function transmogrification(x, y, z) {
  var multiplied = x * y;
  var exponentised = Math.pow(multiplied, z);
  return exponentised;
}

console.log(transmogrification(2, 3, 4));

// 3. Write function wordReverse accept a single argument, string.  The method should
// return a string with the order of words reversed.  Don't worry about punctuation.

function reverseString(str) {
    return str.split(" ").reverse().join(" ");
}
reverseString("Happy backwards day!");

//verbouse

function reverseString(str) {
    // Step 1. Use the split() method to return a new array
    var splitString = str.split(""); // var splitString = "hello".split("");
    // ["h", "e", "l", "l", "o"]

    // Step 2. Use the reverse() method to reverse the new created array
    var reverseArray = splitString.reverse(); // var reverseArray = ["h", "e", "l", "l", "o"].reverse();
    // ["o", "l", "l", "e", "h"]

    // Step 3. Use the join() method to join all elements of the array into a string
    var joinArray = reverseArray.join(""); // var joinArray = ["o", "l", "l", "e", "h"].join("");
    // "olleh"

    //Step 4. Return the reversed string
    return joinArray; // "olleh"
}

reverseString("hello");
