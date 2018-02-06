def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  return rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  initalHand = deal_card + deal_card
  display_card_total(initalHand)
  return initalHand
end

def hit?(int)
  prompt_user
  input = get_user_input
  if input == "s"

    return int
  else
    card = deal_card

    return int + card
  end


end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  playerHand = initial_round
  until playerHand >= 21
    dealtCard = hit?(playerHand)
    playerHand = dealtCard
    display_card_total(playerHand)
  end
  end_game(playerHand)
  # code runner here
end
