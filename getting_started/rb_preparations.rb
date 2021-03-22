a = "world wide web".split
puts a 


# .split is a class method from the string class, can be called directly on the string

b = String.new("blue")
puts "string b: #{b}"

String.try_convert("red")

# made a new string with text blue,
# not sure what .try_convert does yet

#---------------------------------------
c = "cat".between?("ant","zebra")

puts "Is cat between ant and zebra? #{c}"

# between? is not in string documentation, but under comparable mudule > listed under included modules 