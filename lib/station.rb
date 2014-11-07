class Station

  def initialize
  @touched_in_passengers = []
  @has_train = false
  end

  def hold_passengers(passenger)
    @touched_in_passengers << passenger
  end

  def touched_in_passengers
    @touched_in_passengers.count
  end

  def has_train!
    @has_train = true
  end

  def has_trains?
    @has_train
  end
  


end

