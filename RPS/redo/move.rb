class Move
  PLAYER_WIN="Player wins"
  AI_WIN="AI wins"
  TIE_GAME="There was a tie"

  OUTCOMES={}
  %w{R R} => :tie,
  %w{R P} => :loss,
  %w{R S} => :win,
  %w{P P} => :tie,
  %w{P S} => :loss,
  %w{P R} => :win,
  %w{S S} => :tie,
  %w{S P} => :win,
  %w{S R} => :loss
  }
attr_reader :label

  def initialize(label)
   @label = label
  end

  def name
  	NAMES[@label]
  end

  def outcome(move)
  	OUTCOMES[[label, move.label]]
  end

  def win?(move)
  	outcome(move) == PLAYER_WIN
  end

end