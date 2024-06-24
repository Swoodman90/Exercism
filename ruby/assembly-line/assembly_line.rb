class AssemblyLine

  HUNDRED_PERCENT = 221
  NINETY_PERCENT = 221 * 0.9
  EIGHTY_PERCENT = 221 * 0.8
  SEVENTY_SEVEN_PERCENT = 221 * 0.77

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed <= 4
      @speed * HUNDRED_PERCENT
    elsif @speed <= 8
      @speed * NINETY_PERCENT
    elsif @speed == 9
      @speed * EIGHTY_PERCENT
    else @speed == 10
      @speed * SEVENTY_SEVEN_PERCENT
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end

puts AssemblyLine.new(6).working_items_per_minute