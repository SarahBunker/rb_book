def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value

#When you place a return in the middle of the add_three method definition,
#it just returns the evaluated result of number + 3, which is 7, without executing the next line.