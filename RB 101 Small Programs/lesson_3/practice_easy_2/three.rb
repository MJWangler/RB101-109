#Add ages for Marilyn and Spot to the existing Hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

ages["Marilyn"] = 22 
ages["Spot"] = 237

puts ages # => { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 } 

#or 

additional_ages = { "Marilyn" => 22, "Spot" => 237}
ages.merge!
puts ages # => { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 } 