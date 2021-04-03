puts "Problem 1"
# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array1.each {|num| puts num}

#####################
puts ""
puts "Problem 2"
# Same as above, but only print out values greater than 5.

array1.each do |num|
  if num > 5
    puts num
  end
end

#################
puts ""
puts "Problem 3"
#Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

array2 = array1.select {|num| (num % 2) == 1}
p array2

################
puts ""
puts "problem 4"
#Append 11 to the end of the original array. Prepend 0 to the beginning.

array1 << 11
#needed help from stack exchange to remember the easy method.
array1.unshift(0)

p array1

=begin
.unshift(num) ~ add to beginning of array
.shift(num)   ~ remove from beginning of array and return it

.push(num)    ~ add to end of array
.pop(num)     ~ remove from end and return it.
=end

#########################
puts ""
puts "problem 5"
#Get rid of 11. And append a 3

array1.pop
array1.push(3)
p array1

##############
puts ""
puts "Problem 6"
#Get rid of duplicates without specifically removing any one value.

array1.uniq!
p array1

##########################
puts ""
puts "Problem 7"
#What's the major difference between an Array and a Hash?
puts "hashes have key value pairs where the key is a name to identify the value instead of using an index based on position in array to
access values"
puts "Arrays have order. Well hashes do to after Ruby 1.9, but Arrays are better at ordered lists, whereas hashes are better at named
items"

########################
puts ""
puts "Problem 8"
#Create a Hash, with one key-value pair, using both Ruby syntax styles.

a_hash1 = {key1: "value1"}
a_hash2 = {:key2 => "value2"}
a_hash3 = Hash.new
a_hash3[:key3] = "value3"

p a_hash1
p a_hash2
p a_hash3

########################
puts ""
puts "Problem 9"
#Suppose you have a hash h = {a:1, b:2, c:3, d:4}
h = {a:1, b:2, c:3, d:4}
puts "part 1"
#Get the value of key `:b`
p h[:b]

puts "part 2"
#Add to this hash the key:value pair `{e:5}`
h[:e] = 5
p h
puts "part 3"
#Remove all key:value pairs whose value is less than 3.5
h.each do |key,value|
  if value < 3.5
    h.delete(key)
  end
end
p h

########################
puts ""
puts "Problem 10"
#Can hash values be arrays? Can you have an array of hashes? (give examples)
puts "yes you can have arrays with hashes for values and hashes with values that are arrays"

hash_w_array_value = { [1,2,3] => "array for a key and a string for value", "string for key and array for value" => [4,5,6]}
p hash_w_array_value

array_w_hash_value = [h,hash_w_array_value,{:key =>"value"}]
p array_w_hash_value
########################
puts ""
puts "Problem 11"
#Given the following data structures. Write a program that copies the
#information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

key_array = [:email,:address,:phone]
#contact_data_hash = Hash.new

=begin

get key value pair
  take first key_array
  take first contact_data_joe
aid pair to contact_hash for Joe

get next key value pair data
  take second key_array
  take second contact_data_joe
...

contact_data_joe = contact_data[0]
contact_data_sally = contact_data[1]


contact_data[0].each {

contacts["Joe Smith"]  < returns the hash we are modifiying

=end
i = 0
key_array.each do |key|
  #Joe group
  contacts["Joe Smith"][key] = contact_data[0][i]
  
  #Sally group
  contacts["Sally Johnson"][key] =contact_data[1][i]
  
  i += 1
end

#might be able to improve this by using the method that returns the index of a given value
#instead of using an iterator to track which array index I am at

p contacts

########################
puts ""
puts "Problem 12"
#Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

puts "Joes's email is: #{contacts["Joe Smith"][:email]}."
puts "Saly's phone number is: #{contacts["Sally Johnson"][:phone]}."


########################
puts ""
puts "Problem 13"
#Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
#then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|string| string.to_s.start_with?("s")}
p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|string| string.to_s.start_with?("s") || string.to_s.start_with?("w")}
p arr

########################
puts ""
puts "Problem 14"
#Take the following array:
#and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...].
#Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.map! {|string| string.split(" ")}
a.flatten!
p a

########################
puts ""
puts "Problem 15"
#What will the following program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

puts "Yes they are equivalent? I would think it would check equvalancy by calling a key in each hash and comparing the values"
puts "I think if they have the same keys and those keys have the same values then the hashes will be the same,"
puts "regardless of the order they are created or the syntax used to create them"



########################
puts ""
puts "Problem 16"
#Challenge: In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the
#contacts hash from exercise 11, and populate the associated data from the contact_data array. Hint: you will probably need to
#iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.
#Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
#As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

=begin
.shift ~ returns and removes the first element
       ~ returns nill if self is empty
      
.first  ~ returns first element
        ~ returns nill if self is empty
=end

#-------------------
#solution from problem 11
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

key_array = [:email,:address,:phone]

i = 0
key_array.each do |key|
  #Joe group
  contacts["Joe Smith"][key] = contact_data[0][i]
  #Sally group
  contacts["Sally Johnson"][key] =contact_data[1][i]
  i += 1
end

#might be able to improve this by using the method that returns the index of a given value
#instead of using an iterator to track which array index I am at

p contacts
#-----------------------------
# I think my solution is also the solution for the challange prompt
# I looked at the statement of how I thought I might be able to improve, but i don't know the value at that index
# which is why I am using that index is to get the value

# the hints say that .first or .shift might help, but I think using the index to access the values is cleaner because I
# don't need the values returned or removed I just need access to them in order to store them in the hash.

# I just want to record the feeling of being so hyped because my solution that took longer to come up with
# was the solution to the challenge problem that I had heard in chats was so hard that people wondered if anyone actually did it
# and not only did I do it, but I did it without their hints and in 7 lines of code. SO EXCITED!!!!
# I am also excited that I stopped checking my work after each problem after problem 4 so I could be suprised to know that my answer
# was more robust then they asked for in problem 11 and be suprised when I had already solved the challenge problem.