#F(x) = Show all factors of the input number

#How can you get this work without using begin/end/until? 
#No negative numbers and no 0, do not raise exceptions. 

def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do 
    factors << number / divisor if number % divisor == 0 #Allows you to determine if the result of the division is an integer number (no remainder).
    divisor -= 1
  end 
  factors #with no return statement, the last line is returned - in this case we want to return 'factors'
end 


