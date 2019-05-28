#Write program that asks for integer greater than 0, then asks if user wants to determine the sum or product of all numbers between 1 and the entered int

def prompt(message)
  puts(">> #{message}")
end 

def calc_sum(number)
  total = 0 
  1.upto(number) { |value| total += value}
  total
end

def calc_product(number)
  total = 1
  1.upto(number) { |value| total *= value} 
  total
end

prompt("Please enter an integer greater than 0:")
input = gets.chomp.to_i

prompt("Enter 's' to compute the sum, and 'p' to compute the product.") 
operation = gets.chomp

if operation == 's'
  sum = calc_sum(input)
  puts "The sum of the integers between 1 and #{input} is #{sum}."
elsif operation == 'p'
  product = calc_product(input)
  puts "The product of the integers between 1 and #{input} is #{product}."
else
  puts "Unknown function!"
end 


prompt("press Enter twice to close")
gets.chomp