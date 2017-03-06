"use strict";


//madlibs
function madlib (verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}
// console.log(madlib('make', 'best', 'guac'));


//isSubstring
function isSubstring (searchString, subString) {
  let array = searchString.split(' ');
  for(let i = 0; i < array.length; i++ ) {
    if (array[i] === subString){
      return true;
    }
  }
  return false;
}
// return searchString.includes(subString);

// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));

//fizzBuzz

const fizzBuzz = (array) => {
  const fizzbuzzed = [];
  array.forEach( (el) => {
    if ((el % 3 === 0 && !el % 5 === 0) ||
        (el % 5 === 0 && !el % 3 === 0)) {
      fizzbuzzed.push(el);
    }
  });
  return fizzbuzzed;
};

//console.log(fizzBuzz([5, 7, 9, 11, 15, 18]));

const isPrime = (num) => {
  for (let i = 2; i < num; i++) {
    if (num % i === 0 || num < 2) {
      return false;
    }
  }
  return true;
};

// console.log(isPrime(2));
// console.log(isPrime(10));
//console.log(isPrime(15485863));
//console.log(isPrime(3548563));

const sumOfNPrimes = (n) => {
  let primes = [];
  let i = 2;

  while (primes.length < n) {
    if (isPrime(i)) { //TODO: could isPrime be a callback? When do we use callbacks?
      primes.push(i);
    }
    i++;
  }
  return primes.reduce(function(sum, el) {
    return sum + el;
  }, 0);
};

// console.log(sumOfNPrimes(0));
// console.log(sumOfNPrimes(1));
// console.log(sumOfNPrimes(4));
