class Outcome

  def tie
    tie = (user_choice == cpu_choice)
  end

  def user_win
    user_win = {(user_choice == 'rock' && cpu_choice == 'scissors') || 
               (user_choice == 'paper' && cpu_choice == 'rock') || 
               (user_choice == 'scissors' && cpu_choice == 'paper')}
  end

  def cpu_win
    cpu_win =  {(cpu_win == 'rock' && user_choice == 'scissors') || 
               (cpu_choice == 'paper' && user_choice == 'rock') || 
               (cpu_choice == 'scissors' && user_choice == 'paper')}
  end
end
