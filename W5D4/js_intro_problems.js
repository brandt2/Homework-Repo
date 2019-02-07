// madLib
function madLib(verb, adjective, noun) {
  return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`;
}

//isSubstring
function isSubstring(phrase, subphrase) {
  return phrase.includes(subphrase);
}

// fizzBuzz
function fizzBuzz(array) {
  let newArr = [];
  array.forEach(element => {
    if (element % 3 === 0 && element % 5 !== 0) {
      newArr.push(element);
    } else if (element % 5 === 0 && element % 3 !== 0){
      newArr.push(element);
    }
  });
  return newArr;
}

// isPrime
function isPrime(n) {
  if (n < 2) { return false; }

  for (let i = 2; i < n; i += 1) {
    if (n % i === 0) {
      return false;
    }
  }

  return true;
}

// sumOfNPrimes
function sumOfNPrimes(n) {
  let sumPrime = 0;
  let count = 0;
  let i = 2;
  
  while (count < n) {
    if (isPrime(i)) {
      sumPrime += i;
      count += 1;
    }
    i += 1;
  }

  return sumPrime;
}