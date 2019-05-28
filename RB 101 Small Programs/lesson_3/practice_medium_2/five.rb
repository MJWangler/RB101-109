#How could the unnecessary duplication be removed in this method? 

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

#Ruby will automatically evaluate statements, so the 'true' and 'false' are both unnecessary as it is implicit in the function without them 

def color_valid(color)
  color == "blue" || color = "green"
end 

