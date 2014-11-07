class Train

  def initialize
  @carriages = nil
  @arrived = nil
  end

  def has_carriages?
    @carriages = true
  end

  def at_station?
    @arrived = true
  end
end
