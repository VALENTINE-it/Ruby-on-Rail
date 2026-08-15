# Ruby | Data Types


Data types in Ruby represent different types of data like text, strings, numbers, etc. Because Ruby is a pure Object-Oriented language, all data types are based on classes.

---

## Table of Contents
* [Numbers](#1-numbers)
* [Boolean](#2-boolean)
* [Strings](#3-strings)
* [Hashes](#4-hashes)
* [Arrays](#5-arrays)
* [Symbols](#6-symbols)

---

## 1. Numbers
A number is defined as a series of digits using a dot as a decimal mark. You can optionally use an underscore (`_`) as a visual thousands separator. 

Ruby seamlessly handles both **Integers** and **Floating-point** numbers. Historically, integers were split by size into `Fixnum` and `Bignum`, though modern Ruby abstracts these directly under the `Integer` class.

### Code Example
```ruby
# Ruby program to illustrate the Numbers Data Type

# float type
distance = 0.1

# both integer and float type
time = 9.87 / 3600
speed = distance / time

puts "The average speed of a sprinter is #{speed} km/h"
```

### Output
```text
The average speed of a sprinter is 36.474164133738604 km/h
```

---

## 2. Boolean
The Boolean data type represents only one bit of information: either `true` or `false`. In Ruby, **everything** has a truthy value except `false` and `nil` (even the integer `0` is evaluated as `true`).

### Code Example
```ruby
# Ruby program to illustrate the Boolean Data Type

if true
  puts "It is True!"
else
  puts "It is False!"
end

if nil
  puts "nil is True!"
else
  puts "nil is False!"
end

if 0
  puts "0 is True!"
else
  puts "0 is False!"
end
```

### Output
```text
It is True!
nil is False!
0 is True!
```

---

## 3. Strings
A string is a group of letters representing a word or a sentence. Strings are objects of the `String` class and are enclosed in single (`' '`) or double (`" "`) quotes. 
* **Double quotes (`""`)** allow string interpolation (`#{}`) and backslash notation escape sequences.
* **Single quotes (`''`)** do not allow interpolation and only allow escape formatting for `\\` and `\'`.

### Code Example
```ruby
# Ruby program to illustrate the Strings Data Type

puts "String Data Type"
puts 'escape using "\\"'
puts 'That\'s right'
```

### Output
```text
String Data Type
escape using "\"
That's right
```

---

## 4. Hashes
A hash maps unique keys to values using the rocket syntax (`=>`) or symbol syntax. Key-value pairs are separated by commas and enclosed in curly braces `{}`. Hashes function similarly to object literals in JavaScript or associative arrays in PHP. Trailing commas are ignored.

### Code Example
```ruby
# Ruby program to illustrate the Hashes Data Type

colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }

colors.each do |key, value|
  print key, " is ", value, "\n"
end
```

### Output
```text
red is 3840
green is 240
blue is 15
```

---

## 5. Arrays
An array stores an ordered list of data. It can hold mixed collections containing any data type. Array items are separated by commas and enclosed in square brackets `[]`. Array indexing is zero-based (`0`), and trailing commas are safely ignored.

### Code Example
```ruby
# Ruby program to illustrate the Arrays Data Type

ary = [ "fred", 10, 3.14, "This is a string", "last element", ]

ary.each do |i|
  puts i
end
```

### Output
```text
fred
10
3.14
This is a string
last element
```

---

## 6. Symbols
Symbols are lightweight, immutable strings. A symbol is always preceded by a colon (`:`). They are highly optimized because they reference the same object ID throughout program execution, meaning they take up significantly less memory and offer faster lookups than standard strings.

### Code Example
```ruby
# Ruby program to illustrate the Symbols Data Type

domains = {:sk => "GeeksforGeeks", :no => "GFG", :hu => "Geeks"}

puts domains[:sk]
puts domains[:no]
puts domains[:hu]
```

### Output
```text
GeeksforGeeks
GFG
Geeks
```

## nil

In Ruby, nil is an explicit object that represents "nothingness" or the absence of a value.Unlike some languages where a missing value results in a crash or a null primitive error, Ruby treats nil as a fully functional object belonging to the NilClass.Key Characteristics of nilIt is an Object: Since Ruby is a pure Object-Oriented language, nil has its own methods. You can run nil.to_s (returns an empty string "") or nil.to_a (returns an empty array []).It Evaluates to False: In Boolean context, nil is treated as falsy. Along with the boolean false, it is the only other object in Ruby that evaluates to false.Default Return Value: If a method has nothing to return, or if you request a non-existent element from an array or hash, Ruby safely returns nil.Code Examples1. Checking for nilYou can use the .nil? method on any object in Ruby to check if it equals nil.rubyusername = nil

puts username.nil?
# Output: true

age = 25
puts age.nil?
# Output: false

## code example

fruits = ["apple", "banana", "cherry"]

puts fruits[5].inspect

