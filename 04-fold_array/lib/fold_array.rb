def split_even_array(array)
  length = array.length
  [
    array[0..(length / 2) - 1],
    array[(length / 2)..(length - 1)].reverse
  ]
end

def split_odd_array(array)
  length = array.length
  [
    array[0..(length / 2) - 1], array[length / 2],
    array[(length / 2) + 1..(length - 1)].reverse
  ]
end

def sum_arrays(array1, array2)
  [array1, array2].transpose.map { |x| x.reduce(:+) }
end

def fold_array_once(array)
  length = array.length

  return array if length == 1

  if length.even?
    splits = split_even_array(array)
    sum_arrays(splits[0], splits[1])
  else
    splits = split_odd_array(array)
    sum_arrays(splits[0], splits[-1]) << splits[1]
  end
end

def fold_array(array, runs)
  result = array
  runs.times do
    result = fold_array_once(result)
  end
  result
end
