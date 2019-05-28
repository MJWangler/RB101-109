#Build a program that randomly generates Teddy's age. To get the age, generate random number 20..200 

puts("What if your name?")
name = gets.chomp()

if name.empty? 
  name = "Teddy"
else 
  name = name
end 

age = rand(20..200)

puts("#{name} is #{age} years old!") 

