class Carriage

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

  def board(passenger)
    raise "This Carriage is Full" if @passengers.count == 40
    @passengers << passenger
  end

  def alight(passenger)
    @passengers.pop
  end

  def full?
    @passengers.count == 40
  end

end