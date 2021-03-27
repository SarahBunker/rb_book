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
  user_command = gets.chomp
  if user_command != "STOP"
    puts "does stuff"
  end
  if user_command == "STOP"
    break
  end
end


user_command = ""
while user_command != "STOP"
  puts "type STOP to end"
  puts "What do you want to do next?"
  user_command = gets.chomp
end
