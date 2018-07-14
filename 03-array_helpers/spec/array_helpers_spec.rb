require 'array_helpers'

array = [1, 2, 3, 4, 5]

describe 'Static Tests' do
  it 'should test #square method' do
    expect(array.square()).to eq([1, 4, 9, 16, 25])
  end

  it 'should test #array method' do
    expect(array).to eq([1, 2, 3, 4, 5])
  end

  it 'should test #cube method' do
    expect(array.cube()).to eq([1, 8, 27, 64, 125])
  end

  it 'should test #sum method' do
    expect(array.sum()).to eq(15)
  end

  it 'should test #average method' do
    expect(array.average()).to eq(3)
  end

  it 'should test #even method' do
    expect(array.even()).to eq([2, 4])
  end

  it 'should test #odd method' do
    expect(array.odd()).to eq([1, 3, 5])
  end
end

# describe 'Random tests' do
#   array = []
#   while array.length < 20 do
#     array.push(Test.random_number())
#   end
#   # hack to make the array average integer:
#   array[-1] += (array.sum / array.size + 1) * array.size - array.sum

#   it 'should even() and odd() correctly' do
#     Test.assert_equals(array.odd().even(), [], 'odd() or even() returned wrong result')
#     Test.assert_equals(array.odd().length + array.even().length, array.length, 'The count of odd and even values must be the total array length')
#   end

#   it 'should work all together :)' do
#     Test.assert_equals(array.square(), array.map { |v| v * v }, 'square() returned wrong result')
#     Test.assert_equals(array.cube(), array.map { |v| v * v * v }, 'cube() returned wrong result')
#     Test.assert_equals(array.even(), array.select { |v| v % 2 == 0 }, 'even() returned wrong result')
#     Test.assert_equals(array.odd(), array.select { |v| v % 2 == 1 }, 'odd() returned wrong result')
#     Test.assert_equals(array.sum(), array.reduce { |x, y| x + y }, 'sum() returned wrong result')
#     Test.assert_equals(array.average(), array.sum() / array.length, 'average() returned wrong result')
#   end
# end

