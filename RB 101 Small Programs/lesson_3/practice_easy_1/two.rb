#Describe the difference between ! and ? in Ruby, and explain what would happen in each scenario 

#On the end of a method name, they are part of the name - not RUBY syntax! 

=begin
!= means "not equals"
? : is the ternary operator for if...else
!!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
!<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.
=end 

1 != means not equals, and it should be used as a 'not equal to' comparison 
2 putting it before something like !user_name would entail that the object does not equal what we're about to reference 
3 putting ! after something would imply that the method we are invoking is mutative, it's going to alter the object we are referencing 
4 5 putting ? before or after something incorperate it into part of the name 
6 putting two !! would entail that are canceling out the first !, by saying "not not equal == equal" 