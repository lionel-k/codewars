GOOD_WORTH = [1, 2, 3, 3, 4, 10].freeze
EVIL_WORTH = [1, 2, 2, 2, 3, 5, 10].freeze

def compute_score(team, worth)
  team_score = 0
  team.split.each_with_index do |value, index|
    team_score += value.to_i * worth[index]
  end
  team_score
end

def good_vs_evil(good, evil)
  good_score = compute_score(good, GOOD_WORTH)
  evil_score = compute_score(evil, EVIL_WORTH)

  if good_score > evil_score
    'Good should triumph'
  elsif evil_score > good_score
    'Evil should triumph'
  else
    'Should be a tie'
  end
end
