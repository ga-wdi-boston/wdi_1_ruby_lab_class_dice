class Dice
  def initialize (sides = 6)
    @sides = sides
  end

  def sides
    sides = @sides
  end

  def roll
    1 + rand(@sides)
  end

end

