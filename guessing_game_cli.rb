require 'pry'

def generate_random_number
  rand(5) + 1 
end 

def prompt_user
  puts "Guess a number between 1 and 6"
end 

def get_user_input
  gets.chomp
end 

def determine_response(guess, answer)
  binding.pry 
  if guess == answer
    puts "You guessed the correct number!"
    binding.pry 
  elsif guess == "exit"
    puts "Goodbye!"
    binding.pry 
  else
    puts "Sorry! The computer guessed #{answer}."
    binding.pry 
  end 
end 

def run_guessing_game
  #generate and store a random number
  answer = generate_random_number
  binding.pry 
  #prompt user to guess a number betwen 1 and 6
  prompt_user
  #capture user input
  guess = get_user_input
  binding.pry 
  #print out one of three statements based on guess 
  determine_response(guess.to_i, answer)
end 
