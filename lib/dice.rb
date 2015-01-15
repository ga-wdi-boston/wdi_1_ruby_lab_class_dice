class Dice

  def initialize (num_sides = 6)
    @num_sides = num_sides
  end

  def roll
    prng = Random.new
    prng.rand(@num_sides)
  end
end
