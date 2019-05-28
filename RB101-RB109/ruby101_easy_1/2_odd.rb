#Write a method that: takes one integer argument, positive negative or zero. Method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value. 

def odd_number_check(number)
  number % 2 == 1
end 

puts odd_number_check(5)
  # => true 

puts odd_number_check(4)
  # => false 

#If you weren't certain whether modulus or remainder operator (%), how would you make it work either way? 

def odd_number_check_two(number)
  number % 2 == 1 || number % 2 == -1 
end 



#Modulus functions - always assume the sign of the 2nd number -> 5 mod 2 == 1, -5 mod 2 == 1, 5 mod -2 == -1 

#Remainder functions - always assume the sign of the 1st number -> 5 rem 2 == 1, -5 rem 2 == -1, 5 rem -2 == 1 