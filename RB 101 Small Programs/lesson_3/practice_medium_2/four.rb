#This will have the string show modified output, while the array thwarts the method's efforts to modify the caller's version of it 

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}" 

# => My string looks like this now: pumpkinsrutabaga
# => My array looks like this now: ["pumpkins"]

=begin
1.) Method attempts to change the string from "pumpkins" to "pumpkinsruitabaga" 
2.) Method attempts to add "rutabaga" to the array 
3.) Array#= assignemnt makes the literal ['pumpkins', 'rutabaga'] array into a NEW OBJECT. an_array_param -> ['pumpkins', 'rutabaga']
4.) String#<< is a mutative method, so it will alter the object in a way that will be visable outside of the method 