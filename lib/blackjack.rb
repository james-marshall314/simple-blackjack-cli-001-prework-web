def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  Random.rand 1..11
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total total
  total
end

def hit?(card_total)
  # code hit? here
  total = card_total
  prompt_user
  input = get_user_input
  
  case input
  when "s"
    total
  when "h"
    total + deal_card
  else
    invalid_command
  end

end

def invalid_command
  # code invalid_command here
  puts "Invalid input."
  hit?
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  until hand > 21 do
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
    
