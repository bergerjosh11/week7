class RPS
 attr_accessor :player_wins, :rounds
 attr_reader :score, :ai_move, :player_move
  def initialize
  	@player_wins = 0.0
  	@rounds = 0
  	@score = Score.new
  end
  
  def play
  	player_move = get_player_input
    until player_move == 'Q'
      get_ai_move
      puts result
      record_score
      puts "Player has won #{score.percentage_of_wins}"
      puts score.percentage_of_wins
      get_player_input
    end
  end

  private

  def get_player_input
  	Print "your move? (R/P/S, q to quit) > "
    player_move = gets.chomp
    Move.new(gets.chomp)
  end

  def get_ai_move
  	  ["R", "P", "S"].sample
      puts "AI played #{ai_move}"
      @ai_move = Move.new(ai_move)
  end

  def result
  	RESULTS[outcome]
  end

  def record_score
  	score.record(outcome)
  end

  def outcome
  	player_move.outcome(ai_move)
  end

end

RPS.new.play