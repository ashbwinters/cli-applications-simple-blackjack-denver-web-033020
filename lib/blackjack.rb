require 'pry'

def welcome
  # outputs welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # generates and returns a random number between 1 and 11.
  new_card = rand(1..11)
  new_card
end

def display_card_total(card_total)
  # give the player their current card total
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # asks the player to hit(h) or stay(s)
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # stores player input
  user_input = gets.chomp
  user_input
end

def end_game(card_total)
  # bust! game over!
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # deals two cards and gives total
  card_one = deal_card 
  card_two = deal_card
  total = card_one + card_two
  display_card_total(total)
  total
end

def hit?(current_card_total)
  # ask for input,if/else argument to deal new card or not
  if current_card_total > 21
    end_game(current_card_total)
  else
    prompt_user
    
    user_input = get_user_input
    
    if user_input == "s" or "h"
      if user_input == "s"
        current_card_total
      end
      if user_input == "h"
        new_card = deal_card
        current_card_total += new_card
          if current_card_total <= 21
          display_card_total(current_card_total)
          end
          current_card_total
      end
    end
    if user_input != "s" or "h" 
      invalid_command
      current_card_total
    end
  end
 end

def invalid_command
  # if player input is not hit or stay, asks again.
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
