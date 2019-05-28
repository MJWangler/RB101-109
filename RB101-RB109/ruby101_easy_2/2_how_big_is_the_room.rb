#Build a program that asks the user for the length and width of a room (in meters) and then displays the area of the room in both square meters and square feet

def prompt(message)
  puts("=> #{message}")
end 

prompt("What is the length of the room in meters?")
length_meters = gets.chomp.to_f

length_feet = length_meters / 3.28084 

prompt("What is the width of the room in meter?")
width_meters = gets.chomp.to_f

width_feet = width_meters / 3.28084 

size_meters = (length_meters * width_meters).round(2)
size_feet = (length_feet * width_feet).round(2) 

prompt("The room is: #{size_meters} squared meters (#{size_feet} sq ft)!")

