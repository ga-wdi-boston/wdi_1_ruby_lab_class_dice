require_relative '../lib/dice'

RSpec.describe Dice do
  # We use `let` for setting local variables
  let(:sides) { 10 }
  let(:more_sides) { 20 }


  # Similarly, we use `subject` to create an instance
  # of the main object we are testing
  subject(:dice) { Dice.new(sides) }
  subject(:bigdice) { Dice.new(more_sides) }
  subject(:dice_default) { Dice.new }

  # Testing the initialize method
  # For this one, we mostly check that it creates a Rectangle
  describe '#initialize' do
    it 'creates a new instance of a Dice with sides' do
      expect(dice).to be_a Dice
    end
  end

  # This is a test to roll the dice
  # Should return a number between 1 and the number on the dice
  describe '#roll' do
    it 'Gives a random number between 1 and the number of dice' do
      expect(dice.roll).to be_between(1, sides).inclusive
    end
  end

# This is a test to roll the bigdice
# Should return a number between 1 and the number on the bigdice
 describe '#bigroll' do
    it 'Gives a random number between 1 and the number of dice on bigdice' do
      expect(bigdice.roll).to be_between(1, more_sides).inclusive
    end
  end

# This is a test to see if the dice has sides
# Should return a boolean value
  describe '#sides?' do
    it 'Checks to see if the dice has sides' do
      expect(dice_default.sides_exist?).to eq true
    end
  end
end

