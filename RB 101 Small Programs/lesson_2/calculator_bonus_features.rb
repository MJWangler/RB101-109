  #ask user for two numbers
  #ask user for an operation to perform
  #perform the operation on the two numbers
  #output the result 
  
  #answer = Kernel.gets()
  #Kernel.puts(answer)
   
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(operator)
  case operator
    when '1'
      'Adding'
    when '2'
      'Subtracting'
    when '3'
      'Multiplying'
    when '4'
      'Dividing'
  end
end

prompt("Welcome to Calculator! Enter your name:")


  name = ''
  loop do
    name = Kernel.gets().chomp()

    if name.empty?()
        prompt("Make sure you enter a valid name.")
      else
        break
      end
    end

loop do #main loop
  
  number1 = ''
    loop do
      prompt("What is the first number?")
      number1 = Kernel.gets().chomp()

      if valid_number?(number1)
        break
      else
        prompt("Sorry, that is not a valid number.")
      end
    end

  number2 =''
    loop do
      prompt("What is the second number?")
      number2 = Kernel.gets().chomp() 

      if valid_number?(number2)
        break
      else
        prompt("Sorry, that is not a valid number.")
      end
    end



operator_prompt = <<-MSG
    Which operation would you like to perform?
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, 4")
    end
  end
  prompt("#{operation_to_message(operator)} the two numbers...")


  result = case operator
    when '1'
      number1.to_i() + number2.to_i()
    when '2'
      number1.to_i() - number2.to_i()
    when '3'
      number1.to_i() * number2.to_i()
    when '4'
      number1.to_f() / number2.to_f()
    end


    prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")

  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
 
prompt("Thank you for using Matt's calculator application!") 

last = gets.chomp() #this is here to keep the program open upon completion 


#Things to think about:
#Is there a better way to validate that the user has input a number? We'll cover this in more detail in a future assignment.

#It looks like you can call to_i or to_f to convert strings to integers and floats, respectively. Look up the String#to_i and String#to_f documentation in Ruby docs and look at their various examples and use cases.

#Our operation_to_message method is a little dangerous, because we're relying on the case statement being the last expression in the method. What if we needed to add some code after the case statement within the method? What changes would be needed to keep the method working with the rest of the program? We'll show a solution in an upcoming assignment.

#Most Rubyists don't invoke methods with parentheses, unless they're passing in an argument. For example, we use name.empty?(), but most Rubyists would write name.empty?. Some Rubyists even go as far as not putting parentheses around method calls even when passing in arguments. For example, they would write prompt "hi there" as opposed to prompt("hi there").

#Try removing some of the optional parentheses when calling methods to get your eyes acquainted with reading different styles of Ruby code. This will be especially useful if you are using a DSL written in Ruby, like Rspec or Rails.

#We're using Kernel.puts() and Kernel.gets(). But the Kernel. is extraneous as well as the parentheses. Therefore, we can just call those methods by gets and puts. We already know that in Ruby we can omit the parentheses, but how come we can also omit the Kernel.?

  #When we write Ruby that's not in a class, we are working within the object called 'main', which is an instance of object. Kernel module is automatically loaded by Object, giving us access to all of its methods. 

#There are lots of messages sprinkled throughout the program. Could we move them into some configuration file and access by key? This would allow us to manage the messages much easier, and we could even internationalize the messages. This is just a thought experiment, and no need to code this up.
 