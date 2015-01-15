class Dice

  def initialize(sides=6)
    @sides = sides
  end

  def roll
    rand(@sides)
  end
end
