#How can we add multiple items to the array? 

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino").push("Hoppy") 

flintstones.concat(%w(Dino Hoppy))
