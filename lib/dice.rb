class Dice

  def initialize(sides=6)
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides)
  end

end

# my_dice = Dice.new()
# my_dice.sides
# my_dice.roll
