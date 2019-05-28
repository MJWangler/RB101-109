#Write a method that takes one string containing one or more words arguement, and returns the string with all five or more letter words reversed. 

def reverse_words(string)
  words = []
  
  string.split.each do |word| #split seperates each word, #each iterates over split string
    word.reverse! if word.size >= 5 #reverse! reverses word, in this case if character.length >= 5
    words << word #adds word to word list words 
  end 
  
  words.join(' ') #joins the unique strings into 1 string
end 