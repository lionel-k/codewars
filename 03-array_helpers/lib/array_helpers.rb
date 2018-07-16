# Extension of the functionality of the built-in class Array
class Array
  def square
    map { |n| n * n }
  end

  def cube
    map { |n| n * n * n }
  end

  def average
    sum / length
  end

  def even
    select(&:even?)
  end

  def odd
    select(&:odd?)
  end
end
