def sum_pairs(ints, sum)
  (0...ints.length).step(1) do |i|
    (i + 1...ints.length).step(1) do |j|
      return [ints[i], ints[j]] if ints[i] + ints[j] == sum
    end
  end
  nil
end
