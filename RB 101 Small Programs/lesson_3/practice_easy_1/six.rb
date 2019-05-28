#Start with the string below, show two different ways to put "For score and" in front of it 

famous_words = "seven years ago..."

"Four score and " + famous_words

#or 

famous_words.prepend("Four score and ")

#or 

"Four score and" << famous_words