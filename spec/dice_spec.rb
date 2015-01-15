require_relative '../lib/dice'

RSpec.describe Dice do
  let(:sides) { 5 }

  subject(:dice) { Dice.new(sides) }

  describe '#initialize' do
    it 'creates a new instance of a Sphere with a radius' do
      expect(dice).to be_a Dice
    end
  end

  #Roll returns a random number on the dice.
  describe '#Random Number' do
    it 'returns a random number between 0 and maxium sides' do
      expect(dice.roll).to be_between(1, sides).inclusive
    end
  end
end
