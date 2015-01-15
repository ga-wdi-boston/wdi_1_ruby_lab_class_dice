require_relative '../lib/dice'

RSpec.describe Dice do
  let(:sides) { 6 }

  subject(:dice) { Dice.new(sides) }

  describe '#initialize' do
    it 'creates a new instance of a Dice with sides' do
      expect(dice).to be_a Dice
    end
  end

  #sides
  describe '#sides' do
    it 'returns the value of @sides' do
      expect(dice.sides).to be sides
    end
  end

  #roll
  describe '#roll' do
    it 'returns the value of @roll' do
      expect(dice.roll).to be_between(1, sides).inclusive
    end
  end

end
