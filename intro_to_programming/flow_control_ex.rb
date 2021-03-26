#problem 1
=begin
false
false
false
true
true
=end

(32 * 4) >= 129
#false

false != !true
#false

true == 4
#false

false == (847 == '874')
#true

(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
#true

def uppercase(string)
  if string.length > 10
    string.upcase
  else 
    "not a long enough string"
  end
end

rando_string = "What will each block of code below print to the screen"
str2 = "Hello"

puts uppercase(rando_string)
puts uppercase(str2)

##################
#problem 3.
puts "problem 3"
puts ""


def num_report(x)
  if (x >= 0) && (x <= 50)
    return "#{x} is between 0 and 50"
  elsif (x >= 51) && (x <= 100)
    return "#{x} is between 51 and 100"
  elsif (x > 100)
    return "#{x} is above 100"
  else
    return "#{x} is negative"
  end
end

num_array = [-1,23,66,105,0,50,51,100]

num_array.each {|num| puts num_report(num)}

###########################
#problem 4
puts "problem 4"
puts ""
puts "1"
'4' == 4 ? puts("TRUE") : puts("FALSE")
puts "my answer was false as a string"
puts "2"
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
puts "my answer was:"
puts "Did you get it right?"
puts "3"
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
puts "my answer was:"
puts "Alright now!"

####################################################
#problem 5
# both the if else and the def block need end statements
# add end after else

########################################
#problem 6
#(32 * 4) >= "129"
#!!!!!!!!!error
puts 847 == '874'
#false
puts '847' < '846'
#false
puts '847' > '846'
#true
puts '847' > '8478'
#false
puts '847' < '8478'
#true