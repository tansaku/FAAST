class Carriage

  attr_accessor :train
  # # attr_accessor :at_station
  attr_accessor :arrived

  def initialize
  @passengers = []
  empty?

  end

  def passengers
    @passengers.count
  end

  def empty?
    @passengers.count == 0
  end

<<<<<<< HEAD
  def board(passenger)
    raise "This Carriage is Full" if @passengers.count == 40
=======
  def board(passenger, train)
    raise "Train not in Station!!!" if train.at_station == 0
>>>>>>> development
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