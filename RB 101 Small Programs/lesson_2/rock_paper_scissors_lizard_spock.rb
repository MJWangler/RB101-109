#Build a Rock Paper Scissors Game. 

#The user makes a choice
#The computer makes a choice 
#The winner is displayed 

VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_INPUTS = %w(r p sc l sp)
GAME_WIN = 5 
score_player = 0
score_computer = 0


def winner(first, second)
  (first == 'rock' && second == 'scissors') || (first == 'rock' && second == 'lizard') ||
  (first == 'scissors' && second == 'paper') || (first == 'scissors' && second == 'lizard') ||
  (first == 'paper' && second == 'rock') || (first == 'paper' && second == 'spock') || 
  (first == 'spock' && second == 'scissors') || (first == 'spock' && second == 'rock') || 
  (first == 'lizard' && second == 'spock') || (first == 'lizard' && second == 'paper')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end 

def input_conversion(input)
  if input == 'r'
    input << 'ock'
  elsif input == 'p'
    input << 'aper'
  elsif input == 'sc'
    input << 'issors'
  elsif input == 'sp'
    input << 'ock'
  elsif input == 'l'
    input << 'izard'
  else 
    prompt("That's not a valid entry, your object was not converted!") 
  end
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
  
  
prompt("Welcome to Rock Paper Scissors Lizard Spock!")
prompt("---------====1st to 5 wins------------------")

loop do
choice = ''

loop do 
prompt("Choose one: rock, paper, scissors, lizard or spock")
prompt("You may enter r, p, sc, l or sp respectively!")
  
choice = Kernel.gets().chomp()

input_conversion(choice)
  
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
