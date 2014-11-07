class Carriage

  attr_accessor :passengers

  def initialize
  @empty
  @passengers = []
  end

  def passengers
    @passengers.count
  end

  def empty?
    @empty = true
  end

  def board(passenger)
    @passengers << passenger
  end

  def alight(passenger)
    @passengers.pop
  end


  def full?
    @passengers.count == 40
  end




end
