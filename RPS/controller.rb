require "./outcome"
require "./choice"


  loop do
    puts "Let's play Rock, Paper, Scissors"
  begin
    puts "Make your play. Choose either Rock, Paper, or Scissors"
  
  end until options.include?(user_choice)
  
  if tie
	  puts "Tie"
  elsif  user_win
	  puts "#{user_choice} beats #{cpu_choice}"
      puts "You win"
  elsif cpu_win
	  puts "#{cpu_choice} beats #{user_choice}"
      puts "Sorry, you lose"
  end

  puts "Play Again?"
	    answer = gets.chomp.downcase
  break if (answer != 'yes')
    puts "Goodbye"
  end