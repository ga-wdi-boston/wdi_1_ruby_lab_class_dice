class Dice

  def initialize(sides) 
    @sides = sides
  end

  def roll
    @roll = rand(1..@sides)
  end

end

