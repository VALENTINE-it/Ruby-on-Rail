## Loop loop

This is a type of loop that has infinite loop that will keep going unless you request to stop it using the `break` command.

i = 0
loop do
puts "i is #{i}"
i += 1
break if i == 10
end

## While loop 

It is similar to `loop loop` only that now you declare the condition that will break out of the loop upfront.

i = 0
while i < 10 do
puts "i is #{i}"
i += 1
end

You can also use while loops to repeatedly ask a question of the user until they give the desired response:

while gets.chomp != "yes" do
  puts "Are we there yet?"
end

## until loop

The until loop is the opposite of the while loop. A while loop continues for as long as the condition is true, whereas an until loop continues for as long as the condition is false.

i = 0
until i >= 10 do
puts "i is #{i}"
i += 1
end

## for loop

A for loop is used to iterate through a collection of information such as an array or range. These loops are useful if you need to do something a given number of times while also using an iterator.

for i in 0..5
  puts "zombies incoming!"
end

## Do... While loop

The do...while loop is used when you don’t know how many times you want to repeat the task. The while loop is used when you want to check a condition before the first loop. do...while loops are used when you want to check a condition in the loop body after executing the statements. the do...while loop will run at least once.

i = 1

loop do
puts "Message number #{i}"

i = i + 1
if i == 6
break 
end
end

## Times loop

It works by iterating through a loop a specified number of times and even throws in the bonus of accessing the number it’s currently iterating through.

5.times do
puts "Hello, World!!"
end

The second part of the definition:

5.times do
puts "Hello, World!!"
end

## Break

The break keyword is used to end loop & returns a value, instead of skipping just one iteration.

Refer back to the loop loop for example.

## Next

If you want to move to the next iteration of the loop, as opposed to moving back to the start of the current one, you can use next.

10.times do |i|
  puts "Iteration #{i}"
  next if i > 2
  puts "Iteration done"
end


## Redo

We use `redo` When repeating the current iteration or step.