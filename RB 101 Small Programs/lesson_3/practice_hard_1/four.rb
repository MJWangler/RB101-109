#F(x) determine if an input string is an IP address representing dot-seperated numbers
#This code is missing: not returning a false condition, not handling the case that were are more or fewer than 4 components to the IP address

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

=begin
There are several ways to fix this. To determine if there are exactly 4 dot-separated "words" in the string, you can simply add a check for dot_separated_words.size after splitting the string.

The other error in Ben's code is that instead of returning false upon encountering a non-numeric component, he used break to break out of the while loop. Once he breaks, control falls through to the return true statement. He can fix this by performing return false instead of break.

Note: Original return true on the last line of the method can be shortened to just true. Ruby returns the result of the last evaluated expression.
=end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4 #

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end
