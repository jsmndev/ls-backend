# Pseudo-code exercise

1. A method that returns the sum of two integers
    #### Informal

    ```
    Add the first number to the second number
    ```

    #### Formal

    ```
    START
    ADD first_number and second_number
    END
    ```

2. A method that takes an array of strings, and returns a string that is all
   those strings concatenated together

    #### Informal

    ```
    Given a collection of strings

    Iterate through the collection one by one.
      - Save the first value as the starting value
      - For each string, append it to the saved value

    After iterating through the collection, return the saved value
    ```

    #### Formal
    ```
    START

    # Given a collection of string called 'strings'

    SET iterator = 1
    SET new_string = empty string

    WHILE iterator >= length of strings
      new_string = new_string + current_string

      iterator = iterator + 1

    PRINT new_string

    END
    ```

3. A method that takes an array of integers, and returns a new array with every
   other element from the original array, starting with the first element. For
   instance:
    ```ruby
    every_other([1, 4, 7, 2, 5]) # => [1, 7, 5]
    ```

    #### Informal

    ```
    Given a collection of integers

    Iterate through the collection one by one.
      - For each number, compare if its location is an odd number
      - if location is odd
        - move to the next iteration
      - otherwise,
        - save the current number into a new collection

    After iterating through the collection, return the new collection
    ```

    #### Formal

    ```
    START

    # Given a collection of integers called 'numbers'

    SET iterator = 0
    SET new_numbers = empty collection

    WHILE iterator >= length of numbers
      IF iterator % 2 == 0
        APPEND current_number to the new_numbers
      ELSE
        go to the next iteration

      iterator = iterator + 1

    PRINT new_numbers

    END
    ```

4. A method that determines the index of the 3rd occurrence of a given character
   in a string. For instance, if the given character is `'x'` and the string is
   `'axbxcdxex'`, the method should return 6 (the index of the 3rd `'x'`). If
   the given character does not occur at least 3 times, return `nil`.

    #### Informal

    ```
    Given a string and a pattern

    Iterate through the characters of the string one by one.
        - keep track of the index of each occurrence of the pattern
        - keep track of how many times the pattern occurred
        - if current character matches the pattern
            - update the one that keeps track of the index with the index of the 
                current character
            - update the one that keeps track of how many times the pattern 
                occured by incrementing it by 1
        - otherwise,
            - go to the next iteration

    After the iteration, check the occurrence tracker

    if occurrence < 3
      - return nothing
    otherwise,
      - return the index tracker
    ```

    #### Formal

    ```
    START

    Given a string called 'characters' and a pattern called 'pattern'

    SET pattern_occurrence = 0
    SET pattern_index = 0
    SET iterator = 0

    WHILE iterator >= length of characters
      IF current character == pattern
        - pattern_occurrence = pattern_occurrence + 1
        - pattern_index = index of current character at space 'iterator'
      ELSE
        - go to the next iteration

    IF pattern_occurrence < 3
      PRINT nothing
    ELSE
      PRINT pattern_index

    END
    ```

5. A method that takes two arrays of numbers and returns the result of merging
   the arrays. The elements of the first array should become the elements at the
   even indexes of the returned array, while the elements of the second array
   should become the elements at the odd indexes. For instance:
    ```ruby
    merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
    ```

    #### Informal

    ```
    Given 2 collections of numbers

    Iterate through one of the collections one by one
      - Insert the first collection's current number at space 'iterator' in the
      new collection
      - Insert the second collection's current number at space 'iterator' + 1
      in the new collection

    After the iteration, return the new collection
    ```

    #### Formal

    ```
    START

    # Given 2 collections of numbers called 'a_numbers' and 'b_numbers'

    SET new_collection = empty array
    SET iterator = 0

    WHILE iterator >= length of a_numbers
      - APPEND a_numbers's current number at iterator in new_collection
      - APPEND b_numbers's current number at iterator + 1 in new_collection

    PRINT new_collection

    END
    ```
