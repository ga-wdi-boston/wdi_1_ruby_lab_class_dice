class Dice

  def initialize(sides = 6)
    @sides = sides
  end
  def sides
    @sides
  end
  def roll
    rand(1..@sides)
  end
end
