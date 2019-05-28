#Shorten - remove everything starting from 'house..'

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(39..72)

# => "house training your pet dinosaur." 

#or 

advice.slice!(0, advice.index('house'))
