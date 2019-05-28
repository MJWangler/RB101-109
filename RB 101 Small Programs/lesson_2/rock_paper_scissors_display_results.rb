#Build a Rock Paper Scissors Game. 

#The user makes a choice
#The computer makes a choice 
#The winner is displayed 

VALID_CHOICES = %w(rock paper scissors)

def winner(first, second)
  (first == 'rock' && second == 'scissors') || (first == 'scissors' && second == 'paper') || (first == 'paper' && second == 'rock')
end

def display_results(player, computer)
  if winner(player, computer)
    prompt("You've WON the game!")
  elsif winner(computer, player) 
    prompt("Sorry you LOSE!")
  else 
    prompt("It's a draw!")
  end 
end 

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

display_results(choice, computer_choice)
  
prompt("Do you want to play again? y/n")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end 

prompt("Thank you for playing Matt's game. Good bye!")

prompt('Press any key and then enter to close the program!')
a = gets.chomp 