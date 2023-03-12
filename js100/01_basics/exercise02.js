// Using arithmetic operators, get the individual digits of a 4-digit
// number like '4936'

let number = 4936;

console.log('thousands place is ' + Math.floor(number / 1000));
console.log('hundreds place is ' + Math.floor(number % 1000 / 100));
console.log('tens place is ' + Math.floor(number % 100 / 10));
console.log('ones place is ' + Math.floor(number % 10));

// LS Answer
let ones = number % 10
// = 6

number = (number - ones) / 10
// = 493

let tens = number % 10
// = 3

number = (number - tens) / 10
// = 49

let hundreds = number % 10
// = 9

let thousands = (number - hundreds) / 10
// = 4

console.log('thousands place is ' + thousands);
console.log('hundreds place is ' + hundreds);
console.log('tens place is ' + tens);
console.log('ones place is ' + ones);
