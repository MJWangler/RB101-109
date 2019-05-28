#Write a method that takes one argument, postiive integer, and returns a list of digits in the number 

#puts digit_list(12345) == [1, 2, 3, 4, 5]

list = []
def digit_list(number) 
  number.to_i
  a = number % 100000/10000 
  b = number % 10000/1000
  c = number % 1000/100
  d = number % 100/10
  e = number % 10
  list = [a, b, c, d, e]
  p list
end 

digit_list(12345) 

=begin
#Brute Force 
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end 

#Chops off the digits from the end of the number one at a time adding them to an array, then returns array. Integer#divmod divides number by 10, and returns two values: 12345.divmod(10) => [1234, 5] 


#Idiomatic 
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end 

#First converts number to string, then splits into an array of numeric characters. This returns an array of strings so Enumberable#map converts to numbers. (&to_i) = something.map { |char| char.to_i }
=end
