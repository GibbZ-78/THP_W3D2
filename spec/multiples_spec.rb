#JBV - Beginning of tests

# Link with the related Ruby file
require_relative '../lib/multiples.rb'

# Tests for the 'is a multiple of 3 or 5' function
describe "The 'is_multiple_of_3_or_5?' method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(2)).to eq(false)
    expect(is_multiple_of_3_or_5?(11)).to eq(false)
    expect(is_multiple_of_3_or_5?(64)).to eq(false)
    expect(is_multiple_of_3_or_5?(667)).to eq(false)
  end
end

# Tests for the 'sum of all multiple of 3 or 5' function
describe "The 'sum_of_3_or_5_multiples' method" do
  it "should return a sum of integer (or 0) when given an integer" do
    expect(sum_of_3_or_5_multiples(2)).to eq(0)
    expect(sum_of_3_or_5_multiples(3)).to eq(0)
    expect(sum_of_3_or_5_multiples(5)).to eq(3)
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
  end

  it "should return a warning if parameter is not a positive integer" do
    expect(sum_of_3_or_5_multiples(3.14159256)).to eq("Wrong argument")
    expect(sum_of_3_or_5_multiples("test")).to eq("Wrong argument")
    expect(sum_of_3_or_5_multiples("")).to eq("Wrong argument")
    expect(sum_of_3_or_5_multiples(-23)).to eq("Wrong argument")
    expect(sum_of_3_or_5_multiples(1/5)).to eq("Wrong argument")
  end
end

#JBV - End of tests