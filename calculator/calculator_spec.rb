=begin

RSPEC BASICS . . .
1) Bash Command - Basic: rspec calculator_spec.rb
2) Bash Command - Detail: rspec -fd calculator_spec.rb
3) Driver File Name: calculator.rb
4) RSpec File Name: calculator_spec.rb
5) RSpec File Require: require_relative 'calculator' (class name)

##############################

GENERAL GUIDELINES:
# "Syntatic Sugar"
# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

=end
##############################

# DRIVER CODE WOULD BE IN SEPARATE FILE NAMED "calculator.rb"

class Calculator
  def add(x,y)
    x + y
  end

  def subtract(x,y)
    x - y
  end

  def multiply(x,y)
    x * y
  end
end

##############################


# EX 1: Simple Set-Up
=begin

require_relative 'calculator'
describe Calculator do
  it "adds two integers" do
  end

  it "subtracts two integers" do
  end

  it "multiplies two integers" do
  end
end
=end

##############################

#EX 2: Basic
=begin

require_relative 'calculator'
describe Calculator do
  it "adds two integers" do
      calculator = Calculator.new
    #   expect(CLASS.METHOD(ARG1,ARG2)).to eq RESULT
      expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
      calculator = Calculator.new
      expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
      calculator = Calculator.new
      expect(calculator.multiply(2,3)).to eq 6
  end
end
=end

##############################

# EX 3: Refactored/Simplified - w/ Notes
=begin

require_relative 'calculator'
describe Calculator do
    #Adding below allows us to not declare it inside each set of tests.
    let(:calculator){Calculator.new}

  it "adds two integers" do
    #   calculator = Calculator.new ## Removed this, because above (...let(:calculator....))
      expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    #   calculator = Calculator.new ## Removed
      expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    #   calculator = Calculator.new  ## Removed
      expect(calculator.multiply(2,3)).to eq 6
  end
end

=end

##############################

#EX 3: Refactored/Simplified - CLEAN / FINAL
# =begin

require_relative 'calculator'
describe Calculator do
    let(:calculator){Calculator.new}

  it "adds two integers" do
      expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
      expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
      expect(calculator.multiply(2,3)).to eq 6
  end
end

# =end

##############################
