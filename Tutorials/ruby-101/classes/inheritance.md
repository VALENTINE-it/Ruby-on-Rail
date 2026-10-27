### Ruby Inheritance Explained – Learn OOP Today!

Class inheritance is a fundamental OOP (Object-Oriented Programming) feature that helps you create a more specific & specialized version of any class.

Here’s an example:

`Food -> Fruit -> Orange`
`There’s a relationship between these classes!`

We can say that an orange is a fruit, but fruits are also food.

The parent class (also called super class or base class) is always more generic than the subclasses.

Fruit (more generic) is the parent class of Orange (more specific).

In Ruby it looks like this:

class Food
end
class Fruit < Food
end
class Orange < Fruit
end

One of the implications of inheritance in Ruby is that every method & every constant defined on Food will be available on Fruit, and also on Orange.

The methods are passed down from the base class, but not the other way around.

What’s The Purpose of Inheritance?
You may think that creating an object hierarchy provides some kind of “feel good” organization for your code, but there is a lot more to it.

Inheritance is used to create a different version of a parent class which is fit for a particular purpose. Maybe it needs some extra features or methods that wouldn’t make sense in the parent class.

Here’s an example:

All fruits have a color, a weight, and a name.

Some fruits may have special characteristics that aren’t shared with other fruits, so you create a new class that inherits the characteristics of ALL fruits (color, weight, etc.) & then you add the special characteristic.

That’s what I mean by specialization.

Another example:

You have a class that writes to a database, but you want another version of the class (perhaps for debugging purposes) which logs all the database operations.

In this case, you want the decorator pattern.

You can read a detailed explanation on this article, but the basic idea is that you use inheritance to wrap another class & then add something new to it.

Without having to change the original!

Inheritance in The Real World
Ok.

We have learned about inheritance, but did you know that you’re using it every day as a Ruby developer?

Ruby itself uses inheritance to enable methods like:

puts
class
super

This is because all Ruby objects inherit from the Object class by default.

So if you create a class like this:

class Apple
end

Its parent class is Object:

Apple.superclass
# Object
That’s why you’re able to use methods like the ones mentioned above.

For example, when you call puts Ruby looks for this method in your class.

Then:

It looks for the method in one of the parent classes
If not found, it starts from the object again & it’ll try to find method_missing
If not found, it will raise a NoMethodError, or NameError if the method was called without an explicit object (a.size vs size, where a is the explicit object)
You can find more examples of inheritance in Rails.

Right here:

class ApplicationController < ActionController::Base
end
Controller:

class SessionsController < ApplicationController
end
Model:

class Comment < ApplicationRecord
  belongs_to :article
end
Inheritance is everywhere in Ruby, but sometimes it isn’t the right solution.