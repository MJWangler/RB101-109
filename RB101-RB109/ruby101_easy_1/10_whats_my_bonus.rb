#Write method taking two arguments, positive integer and boolean, and calculates bonus for a given salary. If boolean = true then 1/2 salary, if false = 0

def calc_bonus(wage, bonus)
  bonus ? (wage / 2) : 0 
end 

puts calc_bonus(8000, true)
  

  