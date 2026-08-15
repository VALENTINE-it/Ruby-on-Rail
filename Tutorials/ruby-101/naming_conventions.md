### NAMING CONVENTIONS

### Class Naming

## PascalCase

Begin with an `uppercase` letter
Preferably a noun e.g. Car, Bird, MountainBike
Avoid acronyms and abbreviations

class `Car`

______________________________________________________________________________________________________________________

### Constant Naming

## SNAKE_CASE

Should be all `uppercase` letters e.g. AGE, HEIGHT
If the name contains `multiple words`, it should be separated by `underscores (_)` such as MAX_TEMPERATURE
May contain digits but not as the first letter

class Product
    `MAX_TEMPERATURE` = 36;

______________________________________________________________________________________________________________________

### File Naming

## snake_case

Should be in `lowercase`.
If the name contains multiple words, an underscore (_) should separate it.E.g. expression_engine.
Should match the name of the class or module it contains.

______________________________________________________________________________________________________________________

### Method Naming

## snake_case

Should be all in `lowercase`
Preferably a verb `e.g. get_car(), purchase(), book()`
If the name contains multiple words, it should be separated by underscores (_) e.g. get_json()
Clear and descriptive method names without abbreviations are preferred.

class Person
    def get_height(self)
        return self.height
    end
end

# Private methods

To make a method private, use the keyword `private` above it anywhere in the class.

class Person

    def get_height(self)
        return self.height
    end

    private

    def get_weight(self)
        return self.height
    end

end

______________________________________________________________________________________________________________________

### Module Naming

## PascalCase

Adjoining capitalized words
Should resonate with the classes or methods inside the module

module ApplicationHelper
end

______________________________________________________________________________________________________________________

### Variable Naming

## snake_case

Should be all in `lowercase`
Not begin with the special characters like e.g. & (ampersand), $ (dollar)
If the name contains multiple words, it should be separated by underscores (_) e.g. json_string
`Avoid one-character variables` e.g. a, b
Clear and descriptive variable names without abbreviations are preferred.

  `first_name = "Hanz"`

The above is an example of a local variable.

Instance variables are prefixed with an '@' and are used in Ruby classes as show below.

class Student
    def initialize(name)
      @name = name
    end
    
Other prefixes include '$' for global variables, and '@@' for class variables. But when possible, instance and local variables are preferred.
______________________________________________________________________________________________________________________

## 1. Local variables

A local variable is used when you only need the value inside a particular method, block, or piece of code.

def greet
  name = "Valentine"
  puts name
end


greet

Here:

name = "Valentine"

is a local variable.

It belongs only to the greet method.

Use local variables when:

You only need the value temporarily.
The value doesn't need to be shared between methods.
You're doing calculations or intermediate work.

Example:

def calculate_total
  price = 100
  tax = 20
  total = price + tax


  puts total
end

price, tax, and total are all local variables.

## 2. Instance variables

An instance variable belongs to an object.

You create one using @:

class Person
  def initialize(name)
    @name = name
  end


  def introduce
    puts "My name is #{@name}"
  end
end


person = Person.new("Valentine")
person.introduce

Here:

@name = name

is an instance variable.

The important thing is that @name can be used by different methods of the same object.

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end


  def introduce
    puts "My name is #{@name}"
  end


  def show_age
    puts "I am #{@age} years old"
  end
end

Both introduce and show_age can access @name and @age.

Summary:

`Local variable` → "I need this temporarily here."

`Instance variable` → "This information belongs to this object, and I may need it in multiple methods."