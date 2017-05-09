class Temperature

  def initialize(temp_hash = {})
    @temp_hash = temp_hash
  end

  def self.from_celsius(temperature)
    new( c: temperature)
  end

  def self.from_fahrenheit(temperature)
    new( f: temperature)
  end

  def in_fahrenheit
    @temp_hash.key?(:c) ? @temp_hash[:c] * 9 / 5 + 32 : @temp_hash[:f]
  end

  def in_celsius
    @temp_hash.key?(:f) ? (@temp_hash[:f] - 32) * 5 / 9 : @temp_hash[:c]
  end

end

class Celsius < Temperature

  def initialize(temp, temp_hash = {})
    @temp_hash = temp_hash
    @temp_hash[:c] = temp
  end

end

class Fahrenheit < Temperature

  def initialize(temp, temp_hash = {})
    @temp_hash = temp_hash
    @temp_hash[:f] = temp
  end

end
