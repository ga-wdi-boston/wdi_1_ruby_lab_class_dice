class Dice

  def initialize(sides='six')
    @sides = sides
  end

  def roll
    Random.rand(@sides)
  end
end

