const readline = require('readline');
console.log(1);
const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});
console.log(2);
function addTwoNumbers(callback) {
  console.log(3);
  // Notice how nowhere do I return anything here! You never return in
  // async code. Since the caller will not wait for the result, you
  // can't return anything to them.

  reader.question("Enter #1: ", function (numString1) {
    console.log(4);
    reader.question("Enter #2: ", function (numString2) {
      console.log(5);
      const num1 = parseInt(numString1);
      const num2 = parseInt(numString2);
      console.log(6);
      callback(num1 + num2);
      console.log(7);
    });
    console.log(8);
  });
  console.log(9);
}
console.log(10);
addTwoNumbers(function (result) {
  console.log(11);
  console.log(`The result is: ${result}`);
  console.log(12);
  reader.close();
  console.log(13);
});
console.log(14);
