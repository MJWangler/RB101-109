#Create a tip calculator: prompting for bill amount and tip rate. The program must compiute the tip and then display both the tip and total amount 

def prompt(message) 
  puts("=> #{message}")
end 

prompt("What is the bill?")
bill = gets.chomp.to_f

prompt("What is the tip percentage? Enter 15 for 15%, 10.5 for 10.5%")
tip_percentage = (gets.chomp.to_f / 100)

tip = (bill * tip_percentage).round(2)
total = (bill + tip).round(2)

prompt("The bill is: #{bill}")
prompt("The tip is: #{tip}")
prompt("--------------------")
prompt("The total is: #{total}")

prompt("Press any key then enter to close")
gets.chomp