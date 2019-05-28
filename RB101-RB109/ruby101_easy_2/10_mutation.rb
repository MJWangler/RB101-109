#What will the following code print out? 

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2 

#upcase! is a destructive method so it will alter the data permanently. When we call upcase! on array1, all values starting with C and S are allcaps, 
#we can see this when we print array 2 because since the values were pushed from array1 to array2, array1 = array2 in that they're the same tag/pointer