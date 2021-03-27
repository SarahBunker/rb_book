puts "The Doubler"
puts "What number do you want to double?"
#num_to_double = gets.chomp.to_i
num_to_double = 3
puts "At what number do you want to stop doubling?"
#num_to_stop = gets.chomp.to_i
num_to_stop = 100
def doubler(starting,ending)
  puts starting
  if starting < ending
    doubler(starting * 2,ending)
  end
end
doubler(num_to_double,num_to_stop)
puts ""

=begin
def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end
=end

puts "Fibonacci.rb"
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(1)

=begin
0
1 1st
1 2nd
1+1 3rd
(1+1)+1 4th =  [3rd + 2nd] = f(3) + f(2)
(1+1+1) + (1+1) = 5th = [4th + 3rd]= [3rd + 3rd +2nd] = f(3) + f(3) +f(2)
..
The above recursive function works because it breaks it down to adding the ones and zeros that make each fibinacci number.
The number that we give to the recursive function is the number in the fib sequence if 1 , 1, 2 are the 1st 2nd and 3rd respectively.
Or you can think of the number as the number of times you have added if you start with 0+1 being the first time, 1+1 as the second and so on.


=end

