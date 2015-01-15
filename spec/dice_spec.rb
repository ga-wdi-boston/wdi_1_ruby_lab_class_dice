require_relative '../lib/dice'

RSpec.describe Dice do

  let(:sides) { 6 }

  subject(:die) { Dice.new(sides) }

  describe '#initialize' do
    it 'creates a new instance of a Dice with sides' do
      expect(die).to be_a Dice
    end
  end

  describe '#roll' do
    it 'returns a random number between 1 and @sides' do
      expect(die.roll).to be_between(1, sides).inclusive
    end
  end
end
