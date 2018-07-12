GOOD = [1, 2, 3, 3, 4, 10]
EVIL = [1, 2, 2, 2, 3, 5, 10]

def good_vs_evil(good, evil)
  good_score = 0
  good.split.each_with_index do |value, index|
    good_score += value.to_i * GOOD[index]
  end

  evil_score = 0
  evil.split.each_with_index do |value, index|
    evil_score += value.to_i * EVIL[index]
  end

  if good_score > evil_score
    'Good should triumph'
  elsif evil_score > good_score
    'Evil should triumph'
  else
    'Should be a tie'
  end
end
