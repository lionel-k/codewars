# Extension of the functionality of the built-in class Array
class Array
  def square
    self.map { |n| n * n  }
  end

  def cube
    self.map { |n| n * n * n  }
  end

  def average
    self.sum / self.length
  end

  def even
    self.select { |e| e.even? }
  end

  def odd
    self.select { |e| e.odd? }
  end

end
