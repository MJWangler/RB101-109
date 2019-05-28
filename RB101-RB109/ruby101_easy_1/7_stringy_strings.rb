#Write an argument that takes one positive integer argument and returns a string of alternating 1s and 0s, always starts with 1. The length of the the string should match the given integer. 

def stringy(money)
  numbers = []

  money.times do |index|
    number = index.even? ? 1 : 0
    numbers << number 
  end 
  
  numbers.join
end 

p stringy(4)