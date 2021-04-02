puts "problem 1"
# Given a hash of family members, with keys as the title and an array of names as the values, use
# Ruby's built-in select method to gather only immediate family members' names into a new array.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }


immediate_family = family.select do |relation, name|
  (relation == :brothers) || (relation == :sisters)
end
p immediate_family

family_array = immediate_family.values.flatten
p family_array

=begin
orignally I coded this with relation == (:sisters || :brothers)
which in my head meant that the relation is either sister or brother
but all this was doing was getting the sisters because sisters is truthy so pick all of those maybe?
any way switching to 
(relation == :brothers) || (relation == :sisters)
meant I was checking both and if either was true it would save it.

Solution
I didn't turn the hash into an array

I also got the keys and values instead of just the names

=end

puts ""
puts "Problem 2"
#Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge
#and merge!? Write a program that uses both and illustrate the differences.


puts "the difference between merge and merge! is merge makes a new hash with the changes. Merge! changes the hash it was called on."


phone_star = {Anne: 4358907044, David:8017395112}
phone_recent = {Cade: 8018995674, Mom:2082428983, David:8017395112}

phone_list = phone_star.merge(phone_recent)
p phone_list
p phone_star
phone_star.merge!(phone_recent)
p phone_star

#.merge!(other_hash)  << the exclamation mark goes at the end of merge not the parathesis.

puts ""
puts "Problem 3"
# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a
# program that does the same thing except printing the values. Finally, write a program that prints both.

=begin
.each_key
.each_value
.each
=end

phone_list.each_key {|name| puts name}
phone_list.each_value {|phone_num| puts phone_num}
phone_list.each {|name, phone_num| puts "The phone number of #{name} is #{phone_num}."}

puts ""
puts "problem 4"
# Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

name_of_person = person[:name]
puts "The name of this person is #{name_of_person}."

=begin
make sure that you use brackets to access in the hash
you must use the colon in front to access a symbol even if it was defined using the new notation in the hash

=end
puts ""
puts "Problem 5"
d = "David"
s = "Sarah"

puts "The phone list has #{d}'s number? #{phone_list.has_key?(d.to_sym)}"
puts "The phone list has #{s}'s number? #{phone_list.has_key?(s.to_sym)}"

puts ""
puts "Problem 6"
# Given the following code...
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
# What's the difference between the two hashes that were created?
puts "my_hash has a symbol for a key which is easier to insure that the key doesn't have any duplicates."
puts "my_hash2 has a string for a key which is harder to manage, but can be done."

p my_hash
p my_hash2

puts ""
puts "Problem 7"
#If you see this error, what do you suspect is the most likely problem?
#NoMethodError: undefined method `keys' for Array
=begin
A. We're missing keys in an array variable.

B. There is no method called keys for Array objects.

C. keys is an Array object, but it hasn't been defined yet.

D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.
=end
puts "keys are for hashes not arrays, B"

#ANKI