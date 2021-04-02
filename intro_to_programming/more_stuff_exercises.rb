puts "problem 1"
# Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
def find_lab(string)
  if string =~ /lab/
    puts "lab is in the string: #{string}."
  else
    puts "not in this string"
  end
end

array = ["laboratory","experiment","Pans Labyrinth","elaborate","polar bear"]

array.each {|word| find_lab(word)}

##################################################################
puts ""
puts "#2"
#What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }
#prints "Hello from inside the execute method!"
#returns nil because puts returns nil

=begin
solution
Nothing is printed to the screen because the block is never activated with the .call method.
The method returns a Proc object.

=end
###################
puts ""
puts "problem 3"
#What is exception handling and what problem does it solve?
puts "exception handling is capturing the error message and telling the program what to do to continue running even if it gets a certain error"

=begin
Solution
Exception handling is a structure used to handle the possibility of an error occurring in a program. It is a way of handling the error by
changing the flow of control without exiting the program entirely.

=end
################################
puts ""
puts "problem 4"
# Modify the code in exercise 2 to make the block execute properly.
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
#now it prints and returns a nil

##############################
puts ""
puts "problem 5"
#Why does the following code...
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
# Give us the following error when we run it?
=begin
block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
=end

=begin
the code isn't expecting a block it is expecting a variable because we didn't use & when defining the method
so when we type execute followed by a block it doesn't even get to the block because it is expecting stuff in parenthesis


=end

#ANKI
















