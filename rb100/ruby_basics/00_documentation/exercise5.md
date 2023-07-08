## Large Numbers
Using the ruby documentation, determine how you can write large
numbers in a way that makes them easier to read.

- You can easily write large numbers using underscores like so:
    ```ruby
    # 1234 can be written as:
    1_234
    ```

https://docs.ruby-lang.org/en/3.2/syntax/literals_rdoc.html#label-Number+Literals

LS Answer
- You can write large numbers by using underscores to separate groups of digits, like so:
    ```ruby
    1_987_654_321
    ```


### Further Exploration
Is it okay to write the above as `19_87_65_432`?
- Yes. From the documentation, it says that you are able to place an underscore anywhere in the number.
