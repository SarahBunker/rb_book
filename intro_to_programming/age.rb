puts "Please type out how old you are."
string = gets.chomp
num = string.to_i

for i in 1..4 do
  puts "In #{i * 10} years you will be #{i * 10 + num}" 
end

=begin
problem 2
Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years.
Below is the output for someone 20 years old.

Solution
puts "How old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be:"
puts age +  10
puts "In 20 years you will be:"
puts age +  20
puts "In 30 years you will be:"
puts age +  30
puts "In 40 years you will be:"
puts age +  40

=end