class Train

  attr_accessor :arrived

  def initialize
  @train = []
  # @arrived = nil
  @train_in_station = []
  end

  def add_carriage(carriage)
    @train << carriage
  end

  def has_carriages
    @train.count
  end

  def arrives_at(station)
    @train_in_station << station
    @arrived = true
  end

  def departs_from(station)
    @train_in_station.reject! {|e| e == station}
    @arrived = false
  end

  def at_station
    @train_in_station.count
  end

end
