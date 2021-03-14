require 'pry'

def generate_random_number
  rand(1..6)
end 

def prompt_user
  puts "Guess a number between 1 and 6"
end 

def get_user_input
  gets.chomp
end 

def determine_response(guess, answer)
  if guess == answer
    puts "You guessed the correct number!"
  elsif guess == "exit"
    puts "Goodbye!"
  else
    puts "Sorry! The computer guessed #{answer}."
  end 
end 

def run_guessing_game
  #generate and store a random number
  answer = generate_random_number
  #prompt user to guess a number betwen 1 and 6
  prompt_user
  #capture user input
  guess = get_user_input
  #print out one of three statements based on guess 
  determine_response(guess, answer.to_s)
end 
