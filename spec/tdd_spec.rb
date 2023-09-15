require 'tdd'
require 'rspec'
require 'byebug'

describe 'Shoe' do
    subject(:shoe) { Shoe.new([1, 2, 1, 3, 3]) }
    describe '#initialize' do
        it 'initializes the mothod correctly' do
            expect(shoe.arr).to eq([1, 2, 1, 3, 3])
        end
    end

    describe '#my_uniq' do
        it 'removes duplicates from arrays' do
            expect(shoe.my_uniq).to eq([1, 2, 3])
        end
    end

    describe '#two_sum' do
        before(:each) do
            shoe.arr = [-1, 0, 2, -2, 1]
        end
        it 'should return an array of the paired indices that sum to zero' do
            expect(shoe.two_sum).to eq([[0, 4], [2, 3]])
        end
    end
end
