class Choice
 
   def options
    options = ['rock', 'paper', 'scissors']
   end

   def user_choice
  	user_choice = gets.chomp.downcase
   end

   def cpu_choice
  	cpu_choice = options.sample
   end
end