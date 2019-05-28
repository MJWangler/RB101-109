#If we build an array like this 
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"] 
#result is nested array, demonstrate to unest the array below 

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]] 

flintstones.flatten! 