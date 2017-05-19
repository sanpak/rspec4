class Temperature
  # your code goes here!
  def initialize(hash)
    @degree = hash.values[0]
    @unit = hash.keys[0]
  end

  def self.from_celsius
  end

  def self.from_fahrenheit
  end

  def in_fahrenheit
    return @degree * 9.0 / 5.0 + 32 if @unit == :c
    @degree
  end

  def in_celsius
    return (@degree - 32) * 5 / 9 if @unit == :f
    @degree
  end
end

class Celsius < Temperature
  def initialize(degree)
    @degree = degree
  end

  def in_fahrenheit
    return @degree * 9.0 / 5.0 + 32
  end
end

class Fahrenheit < Temperature
  def initialize(degree)
    @degree = degree
  end

  def in_celsius
    return (@degree - 32) * 5 / 9
  end

end
  # def ftoc(fahrenheit)
  #   (fahrenheit - 32) * 5/9
  # end
  #
  # def ctof(celsius)
  #   #debugger
  #   celsius * 9.0 / 5.0 + 32
  # end
