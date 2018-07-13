def sum_pairs(ints, sum)
  computed_sum = 0
  pairs = []
  for i in 0...ints.length
    for j in (i+1)...ints.length
      print [i,j]
    end
  end
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
l1 = [1]*5
sum_pairs(l1, 8)
