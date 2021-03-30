#end of chapter exercises
# problem 1
# This would return the array [2,3,4,5,6]
puts "problem 1"
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

#each returns an array
# I thought that it would return the array of each number in the array added one,
# [2,3,4,5,6]

#!! each returns the original array that it was called on.!!
# [1, 2, 3, 4, 5]

# find return value by typing into irb since it will always print the return with a hash rocket

#problem 2
puts ""
puts "problem 2"
puts ""


#started doing a do while loop

loop do 
  puts "type command"
  #user_command = gets.chomp
  user_command = "STOP"
  if user_command != "STOP"
    puts "does stuff"
  end
  if user_command == "STOP"
    break
  end
end


#user_command = ""
user_command = "STOP"
while user_command != "STOP"
  puts "type STOP to end"
  puts "What do you want to do next?"
  user_command = gets.chomp
end

puts ""
puts "Problem 3, recursion"
puts ""
puts "what number to start with?"
user_number = gets.chomp.to_i
x=0
puts "Let the count down begin"
def count_down(x,user_number)
  if x <= user_number
    count_down(x + 1,user_number)
    puts x
  end
end
count_down(x,user_number)

puts ""
puts "Solution"
#Solution
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)

# Their solution printed the number before recursing.
# mine had the print statement after
# mine also only had an if statement, not if else because it natually deals with negative numbers.
#   because when x = 0 it will never be less then a negative number
# mine is bulkier because it needed two inputs

=begin
ANKI questions to add later, added
Where does the iteration of the counter generally occur in a recursive model?
in the parenthesis of the call to the method from within the method.

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

=end
#ANKI
#sarah is really cute
