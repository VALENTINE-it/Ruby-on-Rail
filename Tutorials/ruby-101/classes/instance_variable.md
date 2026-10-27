What’s an instance variable?

In the Ruby programming language, an instance variable is a type of variable which starts with an @ symbol.

Example:

@fruit

If you have a Fruit class, you may want to know what kind of fruit it’s, what color, weight, etc.

All of these attributes become instance variables.

Like @color, @type, @weight.

How to Define & Use Ruby Instance Variables
You define instance variables inside classes.

Example:

Let’s say we have a CoffeeMachine class.

A coffee machine needs water, so you may want to know how much water is available.

We can do this:

class CoffeeMachine
  def initialize
    @water = 100
  end
end

This @water is our instance variable.

We assign 100 to @water as the initial value.

Now:

If we have a make_coffee method, we can reduce the amount of water left in the tank.

class CoffeeMachine
  def initialize
    @water = 100
  end
  def make_coffee
    @water -= 10
  end
end
Notice that every CoffeeMachine object you create (with new) will have its own private value for @water.

How to Access Instance Variables
Instance variables wouldn’t be very useful if you couldn’t read their current value.

You can read an instance variable value with the @ syntax.

Like this:

class CoffeeMachine
  def initialize
    @water = 50
  end
  def print_water_level
    puts "Water Level: #{@water}"
  end
end
machine = CoffeeMachine.new
machine.print_water_level
# Water Level: 50