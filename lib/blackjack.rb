def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  #display_card_total(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(num)
  temp = num
  prompt_user
  input = get_user_input
  if input == "h"
    temp += deal_card
  elsif input == "s"

  else
    invalid_command
  end
  temp
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

  welcome
  card_count = initial_round
  until card_count > 21 do
    card_count = hit?(card_count)
    display_card_total(card_count)
  end
 end_game(card_count)
end

