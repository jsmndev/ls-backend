// Find the thousands, hundreds, tens and ones place of this
// 4-digit number:
let num = 4936;

// num / 1000 = 4.936 so we need to strip out the decimal place
// with parseInt
let thousands = parseInt(num / 1000);

// Since num / 1000 will give you 936 as its remainder,
// we can use % operator to get 936 and divide by 100:
let hundreds = parseInt(num % 1000 / 100);

// Same pattern for getting the tens place:
let tens = parseInt(num % 100 / 10);

// We do not need to divide anything here bec this
// already results to 6
let ones = parseInt(num % 10);

console.log(`thousands place is ${thousands}`);
console.log(`hundreds place is ${hundreds}`);
console.log(`tens place is ${tens}`);
console.log(`ones place is ${ones}`);

// Alt solution:
// 1. Use num % 10 to determine the rightmost digit.
// 2. Ones you have the ones digit, subtract it from the
// current number.
// 3. Divide the result by 10.
// 4. Repeat 1st step to get the next digit

ones = num % 10 // = 6
num = (num - ones) / 10 // = 493

tens = num % 10 // = 3
num = (num - tens) / 10 // = 49

hundreds = num % 10 // = 9

thousands = (num - hundreds) / 10 // 4
