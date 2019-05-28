#Write a program that greets the user, if the user writes "#{name!}" have the computer yell back 

def prompt(message)
  puts("=> #{message}")
end 

prompt("Hello, what is your name?")
name = gets.chomp 

if name.include?('!')
  prompt("HELLO #{name.upcase}!! WHY ARE YOU SCREAMING AT ME?")
elsif name.include?('?')
  prompt("Why is this a question, don't you know your own name?????????")
elsif name.include?('Andrew')
  prompt("Wuzz goody nigga, had a feelin' it was be you.")
else 
  prompt("Hello #{name}.")
end 

gets.chomp