const FOO = 'bar';
{
  const FOO = 'qux';
}

console.log(FOO);

// Will this program produce an error when run? Why or why not?

/**
 * Nope. Variables declared with `const` has the same scoping
 * rules as variables declared with `let`. And same reasoning
 * from the previous exercise (exercise5.js)
 */

/**
 * LS answer:
 * For much the same reason as the previous exercise, this program
 * doesn't raise an error, it logs `bar` on line 6. One key difference,
 * though, is that we are using `const` instead of `let`, which may
 * have led you to believe an error would occur on line 3. However,
 * since the two const variables are separate entities, no error occurs.
 */
