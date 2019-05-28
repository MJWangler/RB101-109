#What do you expect to happen when greeting variable is referenced in the last line of code below? 

if false 
  greeting = "hello world"
end 

greeting 

#The computer will return 'nil' because all objects in Ruby are considered 'truthy' except for nil and false. 

#Typically, if you reference an uninitialzed variable, Ruby will raise an exception, stating it's undefined etc. 
#When you initialize a local variable within an if block, even if that if block doesn't get executed, local variable is initialized to nil. 