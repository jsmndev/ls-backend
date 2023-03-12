// What value does the following expression evaluate to?
parseInt('3.1415');
// = 3
// It evaluates to 3 bec parseInt parses the number string and
// converts it to an integer.

// LS Answer
// It evaluates to 3. parseInt converts strings that begin with a digit
// to their numeric equivalent. If it encounters a non-digit such as
// `.`, it stops converting. Thus, this example converts the 3 at the
// beginning of the string but ignores everything else.
