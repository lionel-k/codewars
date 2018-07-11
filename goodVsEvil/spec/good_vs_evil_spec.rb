require 'good_vs_evil'

describe '#good_vs_evil' do

  it 'should Test #1' do
    expect(good_vs_evil('1 0 0 0 0 0', '1 0 0 0 0 0 0')).to eq('Should be a tie')
  end

  it 'should Test #2' do
    expect(good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')).to eq('Good should triumph')
  end

  it 'should Test #3' do
    expect(good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')).to eq('Good should triumph')
  end
end
