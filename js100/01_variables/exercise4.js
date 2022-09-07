const NAME = 'Victor';
console.log('Good Morning, ' + NAME);
console.log('Good Afternoon, ' + NAME);
console.log('Good Evening, ' + NAME);

NAME = 'Joe';
console.log('Good Morning, ' + NAME);
console.log('Good Afternoon, ' + NAME);
console.log('Good Evening, ' + NAME);

// What happens when you run the following code? Why?

/**
 * It will output the first 3 logs and throws this error:
 * TypeError: Assignment to constant variable.
 *
 * Because variables declared with `const` cannot be reassigned
 * to a new value.
 */

/**
 * LS answer:
 * The program first greets Victor 3 times. It then encounters
 * an error on line 6, which prevents it from greeting Joe.
 * The problem is that constats are, well, constant.
 * You must use regular variables instead:
 */

let name = 'Victor';
console.log('Good Morning, ' + name);   // => Good Morning, Victor
console.log('Good Afternoon, ' + name); // => Good Afternoon, Victor
console.log('Good Evening, ' + name);   // => Good Evening, Victor

name = 'Joe';                           // no error!
console.log('Good Morning, ' + name);   // => Good Morning, Joe
console.log('Good Afternoon, ' + name); // => Good Afternoon, Joe
console.log('Good Evening, ' + name);   // => Good Evening, Joe
