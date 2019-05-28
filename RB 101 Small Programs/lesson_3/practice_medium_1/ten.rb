#What would be the return value of the method invocation below? 

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end 

bar(foo)

# => false

value returned from "foo" will always be'yes', and "yes" == "no" # => false 