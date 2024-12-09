require 'calculator'

RSpec.describe Calculator do
  describe '.add' do

  	it 'returns the sum of multiple numbers' do
      expect(Calculator.add("1,2,3,4")).to eq(10)
    end

    it 'returns 0 for an empty string' do
      expect(Calculator.add("")).to eq(0)
    end

     it 'returns the number itself for a single number' do
      expect(Calculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(Calculator.add("3,4")).to eq(7)
    end

    it 'handles new lines as delimiters' do
      expect(Calculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimitrs' do
      expect(Calculator.add("//;\n4;7")).to eq(11)
    end

    it 'raises an exception for negative numbers' do
      expect { Calculator.add("5,-5,-6") }
        .to raise_error("negative are not allowed: -5, -6")
    end

  end
end