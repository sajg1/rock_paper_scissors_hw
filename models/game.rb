class RockPaperScissors


  attr_accessor :hand1, :hand2

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play_game()
    if
      (@hand1 == "rock") && (@hand2 == "scissors") || (@hand1 == "scissors") && (@hand2 == "paper") || (@hand1 == "paper") && (@hand2 == "rock")
      return "Player one wins with #{@hand1}!"
    elsif
      (@hand1 == "scissors") && (@hand2 == "rock") || (@hand1 == "paper") && (@hand2 == "scissors") || (@hand1 == "rock") && (@hand2 == "paper")
      return "Player two wins with #{@hand2}!"
    end
  end
end
