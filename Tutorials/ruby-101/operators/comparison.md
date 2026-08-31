### COMPARISON ARITHMETICS

| Operator | Description | Example (a = 10, b = 20) |
|---|---|---|
| == | Checks if the value of two operands are equal or not. If yes, the condition becomes true. | (a == b) is not true. |
| != | Checks if the value of two operands are equal or not. If values are not equal, the condition becomes true. | (a != b) is true. |
| > | Checks if the value of the left operand is greater than the value of the right operand. If yes, the condition becomes true. | (a > b) is not true. |
| < | Checks if the value of the left operand is less than the value of the right operand. If yes, the condition becomes true. | (a < b) is true. |
| >= | Checks if the value of the left operand is greater than or equal to the value of the right operand. If yes, the condition becomes true. | (a >= b) is not true. |
| <= | Checks if the value of the left operand is less than or equal to the value of the right operand. If yes, the condition becomes true. | (a <= b) is true. |
| <=> | Combined comparison operator. Returns 0 if first operand equals second, 1 if first operand is greater, and -1 if first operand is less. | (a <=> b) returns -1. |
| === | Used to test equality within a when clause of a case statement. | (1...10) === 5 returns true. |
| .eql? | True if the receiver and argument have both the same type and equal values. | 1 == 1.0 is true, but 1.eql?(1.0) is false. |
| equal? | True if the receiver and argument have the exact same object id. | If aObj duplicates bObj, aObj == bObj is true, but aObj.equal?(bObj) is false. |


In order to compare things Ruby has a bunch of comparison operators.

The operator == returns true if both objects can be considered the same. For example 1 == 1 * 1 will return true, because the numbers on both sides represent the same value. The expression "A" == "A" also returns true because both strings have the same value.

Likewise, two arrays are equivalent when they contain the same elements, in the same order. For example [1, 2] == [1, 2] will return true, but [1, 2] == [2, 3] and [1, 2] == [2, 1] both will return false.

Note that we say “considered the same” and “equivalent” because technically the two objects do not have to be (and most often, as in our examples) are not the same objects. E.g. while evaluating the expression "A" == "A" Ruby will actually create two different string objects which both contain a single character A.

In practice this is almost always what you want. For the rare case when you actually need to check if two objects are the same object there’s the method equal?. E.g., "A".equal?("A") returns false.

Other comparison operators are: less than < , less than or equal <=, greater than >, and greater than or equal >=. They also work on numbers and strings, in the way you’ll expect it. Open IRB and try a few combinations on numbers and strings.

Comparison operators most often are used in order to formulate conditions in if statements. Like so:

number = 20

puts "#{number} is greater than 10." if number > 10

The most funny operator in Ruby is <=>, because it’s called the spaceship operator. No kidding :) It is rather rarely used, and it is useful for implementing custom ways of sorting things.