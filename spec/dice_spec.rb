require_relative '../lib/dice'

RSpec.describe Dice do
  let(:sides) { 10 }
  subject(:dice){Dice.new(sides)}

  describe '#initialize' do
    it 'creates a new instance of a Dice with some sides' do
      expect(dice).to be_a Dice
    end
  end


  describe '#roll' do
    it 'returns a number between 1 and the maximum represting the roll' do
      expect(dice.roll).to be_between(1, sides).inclusive
    end
  end
end

RSpec.describe Dice do
subject(:dice){Dice.new()}

  describe '#roll' do
    it 'returns a number between 1 and the maximum represting the roll' do
      expect(dice.roll).to be_between(1, 6).inclusive
    end
  end
end
