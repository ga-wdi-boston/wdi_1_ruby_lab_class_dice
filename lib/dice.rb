class Dice

  def initialize (sides = 6)
    @sides = sides
  end

#Random number on a dice
  def roll
    rand(@sides)
  end

end
