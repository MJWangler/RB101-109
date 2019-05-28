ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.key?("Spot")
# => false

ages.include?("Spot")
# => false

ages.member?("Spot")
# => false