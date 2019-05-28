#What is the result of the last line of code below? 

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # => {a:=> "hi there"}

=begin
informal_greeting is a reference to the original object 
informal_greeting << ' there' - modifies the object that called it. This changes the value in greetings. 
Options 
we could initialize informal_greeting with a reference to a new object containing the same value by informal_greeting = greetings[:a].clone.
we can use string concatenation, informal_greeting = informal_greeting + ' there', which returns a new String object instead of modifying the original object.
=end
