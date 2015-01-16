require_relative '../lib/dice'

[4, 6, 8, 10, 12].each do |sides|
  RSpec.describe Dice do
    #    let(:sides) { 6 }
    subject(:dice) { Dice.new(sides) }
    describe '#initialize' do
      it 'creates a new instance of dice' do
        expect(dice).to be_a Dice
      end
    end

    describe '#sides' do
      it 'returns the value of @sides' do
        expect(dice.sides).to be sides
      end
    end

    describe '#roll' do
      it 'returns a random number within the range of defined sides' do
        expect(dice.roll).to be_between(1, sides).inclusive
      end
    end
  end
end
# RSpec.describe Dice do
#   let(:sides) { 10 }

#   subject(:dice) { Dice.new(sides) }
#   describe '#initialize' do
#     it 'creates a new instance of dice' do
#       expect(dice).to be_a Dice
#   end
# end

# describe '#sides' do
#   it 'returns the value of @sides' do
#     expect(dice.sides).to be 10
#   end
# end

# describe '#roll' do
#   it 'returns a random number within the range of defined sides' do
#       expect(dice.roll).to be_between(1, 10).inclusive
#     end
#   end
# end
