require_relative '../lib/dice'

RSpec.describe Dice do

  subject(:dice) { Dice.new(sides) }

  let(:sides) { 6 }

  describe '#initialize' do
    it 'creates a new instance of a Dice with sides' do
      expect(dice).to be_a Dice
    end
  end

  describe '#roll' do
    it 'returns the @roll' do
      expect(dice.roll).to be_between(1, sides).inclusive
    end
  end

  describe '#roll' do
    it 'returns the @roll' do
      expect(dice.roll).to be_between(1, 20).inclusive
    end
  end

end