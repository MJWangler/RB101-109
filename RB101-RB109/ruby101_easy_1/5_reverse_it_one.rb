#Write a method that takes one string argument, and returns a new string with the words in reverse order. 

def reverse_sentence(string)
  string.split.reverse.join(' ')
end 

#split seperate each word and places it in an array. 
#reverse then reverse the order of the strings. 
#join opposes split and rejoins the elements to form 1 string element 