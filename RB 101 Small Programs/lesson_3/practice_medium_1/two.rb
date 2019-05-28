#Why does this have an error and how do you fix? 

puts "the value of 40 + 2 is" + (40 + 2)

#TypeError: no implicit conversion of Fixnum into String because (40+2) results in an integer and it is being concatenated to a string.

puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "the value of 40 + 2 is #{40 + 2}" 