require_relative '../lib/dice.rb'


RSpec.describe Dice do
  let(:sides) { 6 }
  subject(:dice) { Dice.new(sides)}
  describe '#initialize' do
    it 'creates a new instance of a Dice with a sides' do
      expect(dice).to be_a Dice
    end
  end

  describe '#dice.roll' do
    it 'returns a random number within the scope of the sides of the dice' do
      expect(dice.roll).to be_between(1, dice.sides).inclusive
    end
  end
end
