puts "What is your first name?"
first_name = gets.chomp
puts "Hi #{first_name}, what is your last name?"
last_name = gets.chomp
puts "Hello #{first_name} #{last_name}. It is nice to meet you."



=begin
problem 1. Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.
puts "Please type your name"
name = gets.chomp
puts "Hello #{name}"

Solution
puts "What is your name?"
name = gets.chomp
puts "Hello " + name

problem 3. Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method
10 times in a row. Hint: you can use the times method to do something repeatedly.

puts "Please type your name"
name = gets.chomp
10.times{puts "Hi #{name}"}

Solution
10.times do
  puts name
end

problem 4. Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last
name. Then outputs their full name all at once.
=end

=begin
problem 5. Look at the following programs...

x = 0
3.times do
  x += 1
end
puts x

>> this returns 3 because x was initialize outside of the method

y = 0
3.times do
  y += 1
  x = y
end
puts x

>> this returns an error because x was defined inside the method so outside of the method it can't access x, out of scope

=end

#anki