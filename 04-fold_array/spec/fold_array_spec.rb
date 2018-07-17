require 'fold_array'

describe "Kata Tests" do
  input_1 = [ 1, 2, 3, 4, 5 ]

  it "should pass test#1" do
    expected = [ 6, 6, 3 ]
    expect(fold_array(input_1, 1)).to eq(expected)
  end

  it "should pass test#2" do
    expected = [ 9, 6 ]
    expect(fold_array(input_1, 2)).to eq(expected)
  end

  it "should pass test#3" do
    expected = [ 15 ]
    expect(fold_array(input_1, 3)).to eq(expected)
  end

  input_2 = [ -9, 9, -8, 8, 66, 23 ]

  it "should pass test#4" do
    expected = [ 14, 75, 0 ]
    expect(fold_array(input_2, 1)).to eq(expected)
  end
end
