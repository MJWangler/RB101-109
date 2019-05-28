#Build a Rock Paper Scissors Game. 

#The user makes a choice
#The computer makes a choice 
#The winner is displayed 

VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end 

prompt("Welcome to Rock Paper Scissors!")
prompt("-------------------------------")

loop do
choice = ''

loop do 
prompt("Choose one: rock, paper or scissors")
  
choice = Kernel.gets().chomp()
  if VALID_CHOICES.include?(choice)
    break
  else
    prompt("That's not a valid choice!")
  end 
end 

computer_choice = VALID_CHOICES.sample 

Kernel.puts("You chose #{choice}!")
Kernel.puts("And the computer chooses... #{computer_choice}!")

if (choice == 'rock' && computer_choice == 'scissors') || (choice == 'scissors' && computer_choice == 'paper') || (choice == 'paper' && computer_choice == 'rock')
  prompt("You've won the game!")
elsif choice == computer_choice 
  prompt("It's a draw!")
else 
  prompt("Sorry you've lost!")
end 

prompt("Do you want to play again? y/n")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end 

prompt("Thank you for playing Matt's game. Good bye!")

prompt('Press any key and then enter to close the program!')
a = gets.chomp 