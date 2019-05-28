#Look at the code below 

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name 

# => Alice
#    Bob 

#What does this code print? 

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# => BOB
#    BOB 

##upcase! is a destructive method, so the data inside the location we are referencing will be altered when we call this method. 


