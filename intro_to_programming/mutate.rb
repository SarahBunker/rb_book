a = [1,2,3]

#example of a method that mutats arguements
def mutate(array)
  array.pop
end

p "Before mutate method #{a}"
p mutate(a)
p "After mutate method #{a}"

#pop removes the last value of the array?
#p is a print statement that keeps the array together?

#----------------------------------------------------------
a = [1, 2, 3]

# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
p no_mutate(a)
p "After no_mutate method: #{a}"