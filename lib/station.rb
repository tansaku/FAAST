class Station

  def initialize
  @touched_in_passengers = []
  @has_train = false
  @train_in_station = []
  end

  def hold_passengers(passenger)
    @touched_in_passengers << passenger
  end

  def touched_in_passengers
    @touched_in_passengers.count
  end

  def add_train(train)
    raise "Cannot enter station, until train departs" if @train_in_station.count == 1
    @train_in_station << train
  end

  def has_trains
    @train_in_station.count
  end

end

