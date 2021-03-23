puts "Please type out how old you are."
string = gets.chomp
num = string.to_i
#in_years = 0

for i in 1..4 do
  #in_years +=10
  puts "In #{i * 10} years you will be #{i * 10 +num}" 
end

=begin

=end