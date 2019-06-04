class RockPaperScissors


  attr_accessor :hand1, :hand2

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def rock_wins()
    if ((@hand1 == "rock") && (@hand2 == "scissors"))
      return "Rock wins!"
    end
  end




end
