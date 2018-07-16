require 'array_helpers'


describe 'Static Tests' do
  array = [1, 2, 3, 4, 5]

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

describe 'Random tests' do
  array = []
  while array.length < 20 do
    array.push(rand(0..2000))
  end
  # hack to make the array average integer:
  array[-1] += (array.sum / array.size + 1) * array.size - array.sum

  it 'should even() and odd() correctly' do
    expect(array.odd().even()).to eq([])
    # 'The count of odd and even values must be the total array length'
    expect(array.odd().length + array.even().length).to eq(array.length)
  end

  it 'should work all together :)' do
    expect(array.square()).to eq(array.map { |v| v * v })
    expect(array.cube()).to eq(array.map { |v| v * v * v })
    expect(array.even()).to eq(array.select { |v| v % 2 == 0 })
    expect(array.odd()).to eq(array.select { |v| v % 2 == 1 })
    expect(array.sum()).to eq(array.reduce { |x, y| x + y })
    expect(array.average()).to eq(array.sum() / array.length)
  end
end

