#Write a method that takes 2 arguements, a string and a positive interger, and prints the string as many times as the integer indicates. 

#repeat('Hello', 3)
#=> Hello Hello Hello 

def printer(message, x)
  x.times do
    puts message
  end 
end

printer('What good mane?', 5) 