class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hour = padded(@seconds / 3600)
    minute = padded(@seconds % 3600 / 60)
    second = padded(@seconds % 3600 % 60)
    "#{hour}:#{minute}:#{second}"
  end

  def padded(time_format_val)
    return time_format_val.to_s unless time_format_val < 10
    "0#{time_format_val}"
  end

end
