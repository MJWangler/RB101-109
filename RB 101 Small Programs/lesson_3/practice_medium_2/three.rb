#Call a method, pass both a string and an array as parameter (Ruby treats them the same) but see how the results can be different 
#State what will be displayed and why. 

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# => My string looks like this now: pumpkins
# => My array looks like this now: ["pumpkins", "rutabaga"] 

=begin
1.) Parameters are treated in the same way - both are passed "by-value"
2.) Results are different 
3.) String#+= operation = reassignment that CREATES A NEW STRING OBJECT. a_string_param -> "pumpkinsrutabaga", not "pumpkins".
    a_string_param and my_string no longer point to the same object! 
4.) Array#<< operator = keeps the same object that we passed in, and appends the new element to it 
    an_array_param still points to the original object, my_array also points to that same object, we see results "outside" the method 