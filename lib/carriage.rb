class Carriage

  attr_accessor :train
  # # attr_accessor :at_station
  attr_accessor :arrived

  def initialize
  @empty
  @passengers = []

  end

  def passengers
    @passengers.count
  end

  def empty?
    @passengers.count == 0
  end

  def board(passenger, train)
    raise "Train not in Station!!!" if train.at_station == 0
    @passengers << passenger
  end

  def alight(passenger, train)
    raise "Train not in Station!!!" if train.at_station == 0
    @passengers.reject! {|e| e == passenger}
  end

  def full?
    @passengers.count == 40
  end

end