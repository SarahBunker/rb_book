puts "problem 1"
arr = [1, 3, 5, 7, 9, 11]
number = 3
a = arr.include?(number)
puts "the array includes the number: #{a}"

#instruction said to write a program, maybe that means a method?
#solution
if arr.include?(number)
  puts "#{number} is indeed in the array."
end

puts "problem 2"
puts "part 1"
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
p arr
#Array(1..3) => [1,2,3]
#.product => [["b",1], ["b",2] , ["b",3]....]
#arr.first.last => ["a",3]   because it returns them in the order called, does it return both?
#.delete , deletes all instances, just that last value deleted


###
# after running irb
# yes it created that array
# yes I got the product correct
# arr.first.last I got this wrong. the .first returns the array ["b",1]
# the .last returns the value 1
# knowing that the final statement should delete the value 1 from the first array [["b"], ["b",2] , ["b",3]....]
puts "part 2"
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)

#.product([ [1,2,3] ]) => [["b",[1,2,3]],["a",[1,2,3]]]
#arr.first.last => [1,2,3]
# arr.first.delete([1,2,3]) => ["b",["a",[1,2,3]]]


### I think I got this one correct after running it in irb

#solution
#yup correct

=begin
Array(1..3) creates an array with the values from the range
.first.last was used to get a value from a nested array
.first.last on one demensional arrays could give an error because a string doesn't have a .last
.product ~ method that factors arrays creating a new array of the factors
.first.delete means from the first array in a multidemensional array you are deleting some value
I don't think .delete can access sub values in arrays

=end
puts "problem 3"
arr = [["test", "hello", "world"],["example", "mem"]]
b = arr.last.first
puts b

puts "You can also get that word like this #{arr[1][0]}"

puts "problem 4"
arr = [15, 7, 18, 5, 12, 8, 5, 1]

puts "the value 5 occurs at index 3"
puts arr.index(5)
puts "error?"
#puts arr.index[5]
puts "at index 5 the value is 8"
puts arr[5]


=begin
.index(value) ~ returns index value given occurs in the array
.index[value] ~ error because expecting () not []
=end
puts "problem 5"
puts "a is 'e'"
puts "b is 'A'"
puts "c is error, wrong, c is nil, doesn't throw an erro"

string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]

puts a
puts b
puts c

=begin
when you use an index outside of the string it doesn't give an error it just returns nil
=end

puts "problem 6"
names = ['bob', 'joe', 'susan', 'margaret']
#names['margaret'] = 'jody'
puts "the problem is that using bracket notation with array it expects an integer for the index"
puts "if we were using a hash then you could use a symbol to access the value"
puts "to fix it we need to change it like this"
names[3] = 'jody'
p names

puts "problem 7"
siblings=["Anne","Bruce","Shelly","Peter","Skyler","Sarah","Emily","Tami","Cissly","Sam","Hope"]
siblings.each_with_index{|name,order| puts "#{order+1}. #{name}"}

#remember it is value and then index
puts "problem 8"
array1 = Array(1..10)
array2 = array1.map{|x| x+2 }
p array1
p array2

#create an array using Array(range)
#ANKI