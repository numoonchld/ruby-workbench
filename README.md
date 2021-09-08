# ruby-workbench

- Ruby is a strongly object-oriented language, which means that absolutely everything in Ruby is an object, even the most basic data types.

- Ruby programmers use the Ruby programming language to design and build higher level languages called Domain Specific Languages or DSL's like Rails and Rspec.

## Object Oriented Ruby

- When defining a class, we typically focus on two things: `states` and `behaviors`.

  - States track attributes for individual objects.
  - Behaviors are what objects are capable of doing.

- Ruby has a built-in way to automatically create getter and setter methods for us, using the `attr_accessor` method.

  - The @name variable looks different because it has the @ symbol in front of it. This is called an instance variable.
  - By removing the `@` symbol, we're now calling the instance method, rather than the instance variable.
    - `attr_accessor :name`

- From within the class, when an instance method uses `self`, it references the calling object.

# Readings

- [What is Ruby's double-colon `::`?](https://stackoverflow.com/questions/3009477/what-is-rubys-double-colon)
