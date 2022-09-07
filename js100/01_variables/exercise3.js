{
  let foo = 'bar';
}

console.log(foo);

// What happens when you run the following program?
// Why do we get that result?

/**
 * There will be an error that will say: ReferenceError: foo is not defined
 * and we get that result because `foo` was defined inside of a block, and only in that block where `foo` is available.
 */

/**
 * LS answer:
 * The program outputs an error since `foo` is out of scope: the
 * `let` statement creates variables with block scope, which limits
 * the visibility of the variable to the block. Even though
 * `console.log(foo)` comes after the declaration and initialization
 * of `foo`, we still get an error since we declared `foo` inside
 * the block. Outside the block, `foo` doesn't exist.
