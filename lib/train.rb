class Train

  def initialize
  @train = []
  @arrived = false
  end

  def add_carriage(carriage)
    @train << carriage
  end

  def has_carriages
    @train.count
  end

  def arrives_at_station
    @arrived = true
  end

  def at_station?
    @arrived
  end

end
