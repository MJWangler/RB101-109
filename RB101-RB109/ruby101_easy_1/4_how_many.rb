#Write a method that counts the number of occurances of each element in a given array 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end 
  
count_occurrences(vehicles)

#As we iterate each element, we create a new key-value pair in occurances. Array#count counts the number of elements. #each on newly created occurances lets us pass the keys and values as block parameters. Inside the block, invoke #puts to print each key-value pair. 

