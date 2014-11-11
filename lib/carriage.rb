class Carriage

  MAX_CARRIAGE_CAPACITY = 40

  def initialize
    @empty
    @passengers = []
  end

  def passengers_count
    @passengers.count
  end

  def empty?
    @passengers.count == 0
  end

  def receive(passenger, train)
    raise "Train not in Station!!!" if train.at_station == 0
    @passengers << passenger
  end

  def alight(passenger, train)
    raise "Train not in Station!!!" if train.at_station == 0
    @passengers.reject! {|e| e == passenger}
  end

  def full?
    @passengers.count == MAX_CARRIAGE_CAPACITY
  end

end