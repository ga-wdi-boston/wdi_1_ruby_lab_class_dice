class Dice
  def initialize(sides=6)
    @sides = sides
  end

  def roll
    # @sides.rand
    Random.new.rand(1..@sides)
  end

  def sides_exist?
    @sides == 6
  end

end
