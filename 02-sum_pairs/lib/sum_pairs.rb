def sum_pairs(ints, sum)
  pairs = []
  (0...ints.length).step(1) do |i|
    (i + 1...ints.length).step(1) do |j|
      pairs << [i, j]
      # print pairs
      return [ints[i], ints[j]] if ints[i] + ints[j] == sum
    end
  end
  nil

  # i = 0
  # while i < pairs.length && (ints[pairs[i][0]] + ints[pairs[i][1]]) != sum
  #   i += 1
  # end

  # i == pairs.length ? nil : [ints[pairs[i][0]], ints[pairs[i][1]]]
end

# l1 = [1, 4, 8, 7, 3, 15]
# # l1 = [1]*5
# l3 = [20, -13, 40]
l5 = [10, 5, 2, 3, 7, 5]
print sum_pairs(l5, 10)
# print sum_pairs(l3, -7)
# sum_pairs(l1, 8)
