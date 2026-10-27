What is a class in Ruby?

Classes are the basic building blocks in Object-Oriented Programming (OOP) & they help you define a blueprint for creating objects.

Objects are the products of the class.

So what is an object?

An object is an individual “thing”, with its own identity & its own data.

For example:

A Book class could be the blueprint for creating books.

This class defines what attributes ALL books have in common, like:

a title
an author
pages

Every individual book is an object & you can make many objects like it thanks to the Book class. That’s the point of creating classes, they are reusable blueprints for your Ruby application.

The syntax for creating a class goes like this:

class Orange
end

Notice that:

Class names start with an uppercase letter.
We use the class keyword, then the end keyword.
An empty class is not very useful, but you can still create objects from it.
There are other ways to create a class (like Class.new), but these methods are only useful in special situations.

The main use of a class is to be a container of methods, instance variables & constants, forming a blueprint from which you can create objects.

Here’s a code example:

class Orange
  def squeeze
    puts "Here's your juice!"
  end
end

orange = Orange.new
orange.squeeze

example of instance variable:

An instance variable is something your class knows.

Example:

class Orange
  def initialize
    @juice_available = 100
  end
  def squeeze
    @juice_available -= 50
  end
end