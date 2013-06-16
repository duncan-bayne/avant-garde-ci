require_relative '../../lib/calculator.rb'
require_relative '../spec_helper.rb'

describe 'Calculator' do

  before do
    @calculator = CalculatorService::Calculator.new
  end

  describe 'addition' do

    it 'adds two numbers' do
      @calculator.add(1.0, 2.0).should == 3.0
    end

  end
end

