  #ask user for two numbers
  #ask user for an operation to perform
  #perform the operation on the two numbers
  #output the result 
  
  #answer = Kernel.gets()
  #Kernel.puts(answer)
   


  Kernel.puts("Welcome to Calculator!")
  
  Kernel.puts("What is the first number?")
  number1 = Kernel.gets().chomp()
  
  Kernel.puts("What is the second number?")
  number2 = Kernel.gets().chomp() 
  
  Kernel.puts("Which operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
      operator = Kernel.gets().chomp()
      
  if operator == '1'
    result = number1.to_i() + number2.to_i()
  elsif operator == '2'
    result = number1.to_i() - number2.to_i()
  elsif operator == '3'
    result = number1.to_i() * number2.to.i() 
  else 
    result = number1.to_f() / number2.to_f() 
  end 
      
  Kernel.puts("The result is #{result}") 

  Kernel.gets.chomp()
 
 