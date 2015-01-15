require_relative '../lib/dice'

RSpec.describe Dice do

  let(:sides) { 6 }
  subject(:dice) { Dice.new(sides) }

  describe '#initialize' do
    it 'creates a new instance of a die with a number of sides' do
      expect(dice).to be_a Dice
    end
  end

  describe '#sides' do
    it "returns number of sides" do
      expect(dice.sides).to be sides
    end
  end

  describe '#roll' do
    it 'rolls the dice' do
      expect(dice.roll).to be_between(1, dice.sides).inclusive
    end
  end
end

