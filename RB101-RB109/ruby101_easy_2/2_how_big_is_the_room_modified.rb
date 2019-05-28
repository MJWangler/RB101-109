#Build a program that asks the user for the length and width of a room (in meters) and then displays the area of the room in both square meters and square feet

def prompt(message)
  puts("=> #{message}")
end 

prompt("What is the length of the room in feet?")
length_feet = gets.chomp.to_f

prompt("What is the width of the room in feet?")
width_feet = gets.chomp.to_f

feet_squared = (length_feet * width_feet).round(2)

inches_squared = (feet_squared / 144).round(2) 
centimeters_squared = (feet_squared / 929.03).round(2)

prompt("The room area is: #{feet_squared} feet squared (#{inches_squared} square in. and #{centimeters_squared} square cm.)")

prompt("Push any key and then enter to close the program")
gets.chomp