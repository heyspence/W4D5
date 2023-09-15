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
end

