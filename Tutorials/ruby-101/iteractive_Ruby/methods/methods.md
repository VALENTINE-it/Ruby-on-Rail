### METHODS

Methods implement the functionality of your program. Here is a simple method definition:

def one_plus_one
  1 + 1
end

A method definition consists of the def keyword, a method name, the body of the method, return value and the end keyword. When called the method will execute the body of the method. This method returns 2.

## Method Names

Method names may be one of the operators or must start a letter or a character with the eighth bit set. It may contain letters, numbers, an _ (underscore or low line) or a character with the eighth bit set. The convention is to use underscores to separate words in a multiword method name:

def method_name
  puts "use underscores to separate words"
end

## Return Values

By default, a method returns the last expression that was evaluated in the body of the method. In the example above, the last (and only) expression evaluated was the simple sum 1 + 1. The return keyword can be used to make it explicit that a method returns a value.

def one_plus_one
  return 1 + 1
end

It can also be used to make a method return before the last expression is evaluated.

def two_plus_two
  return 2 + 2
  1 + 1  # this expression is never evaluated
end

## ARGUMENTS
An argument is an actual value you give to a method when you call it.

A method may accept arguments. The argument list follows the method name:

def add_one(value)
  value + 1
end

puts add_one(5)

When called, the user of the add_one method must provide an argument. The argument is a local variable in the method body. The method will then add one to this argument and return the value. If given 1 this method will return 2.

## Method Chaining

Method chaining in Ruby means calling several methods one after another on the same line. Each method works on the value returned by the previous method.

# 1. Chaining string methods
name = "  valentine  "

result = name.strip.capitalize

puts result
`Valentine`

- strip removes spaces at the beginning and end.
- capitalize works on the cleaned string and capitalizes its first letter.

## 2. Chaining array methods
numbers = [5, 2, 3, 2, 1]

result = numbers.uniq.sort.reverse

p result
`[5, 3, 2, 1]`

- uniq removes duplicates: [5, 2, 3, 1].
- sort arranges the numbers: [1, 2, 3, 5].
- reverse reverses that order: [5, 3, 2, 1].

# 3.Chaining your own methods
Return self from your methods so the next method can work on the same object.

class Person
  def set_name(name)
    @name = name
    self
  end

  def set_age(age)
    @age = age
    self
  end

  def introduce
    puts "I am #{@name}, and I am #{@age} years old."
  end
end

Person.new.set_name("Valentine").set_age(22).introduce
`I am Valentine, and I am 22 years old.`

## Scope
Scope refers to the visibility and accessibility of variables within different parts of a program. It determines where a variable can be accessed and used. Understanding scope is crucial for avoiding naming conflicts and ensuring that data is accessed and modified correctly within different parts of your Ruby code.

Scope in Ruby determines where a variable can be accessed. A variable might belong to a method, an object, a class, or the whole program.

## 1. Local variables
Local variables start with a lowercase letter or an underscore, such as name or _age.

def greet
  name = "Valentine"
  puts name
end

greet
`Valentine`

## Here, name belongs to the greet method.

def greet
    ```
    end