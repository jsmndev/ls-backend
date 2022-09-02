// Explain why this code logs '510' instead of 15.
console.log('5' + 10);

/**
 * JavaScript implicitly coerces 10 to a string, therefore, once
 * 10 turns to '10', the + operator concatenates '5' and '10'
 * together.
 */

/**
 * LS answer:
 *
 * The code logs 510 since every + expression that has a string
 * operand produces a string result no matter what the other
 * operand is. In other words, the Number 10 gets coerced to a
 * String and then gets concatenated to the String '5', which
 * produces '510'.
 */
