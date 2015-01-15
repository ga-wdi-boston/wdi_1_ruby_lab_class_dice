require_relative '../lib/dice'

RSpec.describe Dice do
  # We use `let` for setting local variables
  let(:num_sides) { 10 }

  # Similarly, we use `subject` to create an instance
  # of the main object we are testing
  subject(:dice) { Dice.new(num_sides) }

  # Testing the initialize method
  # For this one, we mostly check that it creates a Rectangle
  describe '#initialize' do
    it 'creates a new instance of a die with a certain number of sides' do
      expect(dice).to be_a Dice
    end
  end

describe '#roll' do
  it 'number rolled on die' do
   expect (expect(dice.roll).to be_between(1, num_sides).inclusive)
  end
end
end
