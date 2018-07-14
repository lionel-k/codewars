def sum_pairs(ints, sum)
  computed_sum = 0
  pairs = []
  for i in 0...ints.length
    for j in (i+1)...ints.length
      # print [i,j]
      pairs << [i, j]
    end
  end

  # print pairs

  i = 0
  while i < pairs.length && (ints[pairs[i][0]] + ints[pairs[i][1]]) != sum do
    i += 1
  end

  # puts i

  i == pairs.length ? nil : [ints[pairs[i][0]],ints[pairs[i][1]]]
  # print [ints[pairs[i][0]],ints[pairs[i][1]]]
  # return [ints[pairs[i][0]],ints[pairs[i][1]]]

  # pairs.each do |pair|
  #   puts ints[pair[0]] + ints[pair[1]]
  # end
  # while computed_sum != sum
  # i = 0
  # j = 1
  # while (ints[i] + ints[j]) != sum
  #   if j <= ints.length - 2
  #     j += 1
  #   else
  #     j += 1
  #   end
  # end
    # puts computed_sum
    # computed_sum += 1
  # end
end

# l1 = [1, 4, 8, 7, 3, 15]
# # l1 = [1]*5
l3 = [20, -13, 40]
# l5 = [10, 5, 2, 3, 7, 5]
# print sum_pairs(l5, 10)
print sum_pairs(l3, -7)
# sum_pairs(l1, 8)
