#1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.
a = "Sarah"
b = "Bunker"

puts "#{a} #{b}"

# or

=begin
a.push(" ")
a.push(b)

puts "second attempt"
puts a

This didn't work because push not a method for strings, just for arrays?

=end

#or

a = "Sarah"
b = "Bunker"

a += " "
a += b

puts "third attempt"
puts a

#or

a = "Sarah"
b = "Bunker"

a << " "
a << b

puts "fourth attempt"
puts a

# I think concatenated refers to the third and fourth method. I think the first method is called string interpolation

# Solution
puts "Solution"
puts "Sarah " + "Bunker"

=begin
solution included the space in one of the texts however that didn't seem to be allowed in the question.
solution did not assign the strings for first and last name to variables.
solution did not print the result which make me believe they are working in irb, not a separate ruby file.
instructions does say two strings, so my solution of keeping the space separate was two eleborate.
=end

###############################################################################################################3
# 2.Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in
# the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
puts ""
puts "please enter a 4 digit number"
#num_4 = gets.chomp
num_4 = 1234
num_4 = num_4.to_i

num_1000 = num_4/1000
modulo = num_4%1000
num_100 = modulo/100
modulo %= 100
num_10 = modulo/10
num_1 = modulo % 10


puts "The thousands diget is #{num_1000}. 
The hundreds diget is #{num_100}.
The tens diget is #{num_10}.
The ones diget is #{num_1}."




=begin
integers don't accep the .length call
How to check the input?
check if it is a float?
no I just changed it to an integer and then any decimal places they provided were chopped off.
can you %=
yes you can do %=
make sure there are no spaces between the = sign and begin/end on multiline comments
=end

=begin
solution
thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 1000 % 100 / 10
ones = 4936 % 1000 % 100 % 10

or

tens = 4936 % 100 / 10
ones = 4936 % 10

again the solution isn't assigning variables to intermediary steps.
I didn't think about doing multiple steps on the same lines
solution doesn't print results, just finds the answers and assigns them to a variable
=end

#################################################################################
puts ""
puts "Problem 3"
puts ""
# Write a program that uses a hash to store a list of movie titles with the year they came out.
# Then use the puts command to make your program print out the year of each movie to the screen.
# The output for your program should look something like this.

movie_hash = {iron_man: 2008, the_incredible_hulk: 2008, iron_man_2: 2010, thor: 2011, the_avengers: 2012}
movie_hash.each {|movie,year| puts year}

=begin
Solution
movies = { :jaws => 1975,
           :anchorman => 2004,
           :man_of_steel => 2013,
           :a_beautiful_mind => 2001,
           :the_evil_dead => 1981 }

puts movies[:jaws]
puts movies[:anchorman]
puts movies[:man_of_steel]
puts movies[:a_beautiful_mind]
puts movies[:the_evil_dead]

uses old hash format
doesn't use .each to loop through hash
does use bracket notation to access each element by using the symbol index
If you define the hash using the old notation can you access it using the new symbol notation?


puts "experiment"
movies = { :jaws => 1975,
           :anchorman => 2004,
           :man_of_steel => 2013,
           :a_beautiful_mind => 2001,
           :the_evil_dead => 1981 }

puts movies[jaws:]  <<< no this line has an error, can't access symbols using the colon after the symbol, only use this notation when defining

movies = { jaws: 1975, <<< tried changing the definition of just jaws in the hash, can mix styles
           :anchorman => 2004,
           :man_of_steel => 2013,
           :a_beautiful_mind => 2001,
           :the_evil_dead => 1981 }

puts movies[:jaws]  

#### new hash syntax (ruby 1.9 or later)
movies = { jaws: 1975,
           anchorman: 2004,
           man_of_steel: 2013,
           a_beautiful_mind: 2001,
           the_evil_dead: 1981 }

puts movies[:jaws]
puts movies[:anchorman]
puts movies[:man_of_steel]
puts movies[:a_beautiful_mind]
puts movies[:the_evil_dead]

=end

########################################################################################################################################
puts ""
puts "problem 4"
puts ""
#4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

movie_array = []
movie_hash.each {|movie,year| movie_array.push(year)}
puts movie_array

=begin
Solution
dates = [1975, 2004, 2013, 2001, 1981]

puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]
puts dates[4]

didn't reuse the hash we already had
=end

##########################################################################################################################################
puts ""
puts "problem 5"
puts ""
#5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
a = 1 
1.upto(5) {|num| a *= num}
puts a

a = 1 
1.upto(6) {|num| a *= num}
puts a

a = 1 
1.upto(7) {|num| a *= num}
puts a

a = 1 
1.upto(8) {|num| a *= num}
puts a

puts "solution"
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

=begin
solution wrote out all of the numbers, I use a loop.
=end

################################################################################################################################
puts ""
puts "problem 6"
puts ""
# 6. write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

float1 = 3.45
float2 = 66.78
float3 = 29.835

=begin
A1 = float1 ** 0.5
A2 = float2 ** 0.5
A3 = float3 ** 0.5
=end

A1 = float1 ** 2
A2 = float2 ** 2
A3 = float3 ** 2


puts A1
puts A2
puts A3

=begin
probably a way to do it not involving fractions in the exponent
oh I did square roots instead of squares
Solution
puts 4.30 * 4.30
puts 6.13 * 6.13
puts 124.34 * 124.34

=end

###########################33
# 7.What does the following error message tell you?

=begin
SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
=end

# this tells me that somewhere I started a {} block but I close it with a ) instead of a }

#ANKI