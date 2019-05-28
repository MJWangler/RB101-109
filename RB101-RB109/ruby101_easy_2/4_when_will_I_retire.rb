#Build a program that display when the user will retire and how many years she has to work until retirement

def prompt(message)
  puts("=> #{message}")
end 

CURRENT_YEAR = Time.now.year #time classes is useful, gives us the current time

prompt("What is your age in years?")
age_current = gets.chomp.to_i

prompt("At what age would you like to retire?")
age_retirement = gets.chomp.to_i 

work_years_left = (age_retirement - age_current) 

retirement_year = (CURRENT_YEAR + work_years_left) 

prompt("It's #{CURRENT_YEAR}. You will retire in #{retirement_year}!")
prompt("You only have #{work_years_left} years to go!")

prompt("Press enter twice to close the program")
gets.chomp