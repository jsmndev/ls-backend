# Down the Rabbit Hole
Sometimes, the documentation is going to leave you scratching your head.

In a very early assignment at Launch School, you are tasked with writing a
program that loads some text messages from a YAML file. We do this with
`YAML::load_file`:

```ruby
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
```

Find the documentation for `YAML::load_file`.

I cannot find YAML in the core docs, and thought to look into the standard
library, but I was not sure where to find that for Ruby 3.2.2, and I found in
the side nav the link standard_library. When you click that link, you will just
find a page with a list of libraries and extensions with their brief description.

For YAML, it says: `Ruby client library for the Psych YAML implementation`.
And I wondered if Psych is a class. And turns out it is. and there I found the
documentation for `#load_file`: 
https://ruby-doc.org/3.2.2/exts/psych/Psych.html#method-c-load_file

