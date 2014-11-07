class Train

  def initialize
  @train = []
  @arrived = nil
  end

  def add_carriage(carriage)
    @train << carriage
  end


  def has_carriages(carriage)
    @train.count
  end

  def at_station?
    @arrived = true
  end
end
