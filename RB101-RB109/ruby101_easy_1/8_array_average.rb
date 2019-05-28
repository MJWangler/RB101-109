#Write method taking an array containing integers argument and returns the average of all the number in the array, always positive never empty. 
#First add each number together
#Divide the result by total index sum

sum = 0
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum.to_f / numbers.count
end

puts average([10, 28, 1994])

#reduce combines all elements of array by applying addition, specified via block + symbol
#count counts the number of elements, then we divide. 

def average_float(arr)
  (arr.sum / arr.size.to_f)
end 