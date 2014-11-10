class Passenger

<<<<<<< HEAD
  def initialize(amount)
    @funds = amount
=======
  def initialize
    @funds = 0
    @touch_in = false
>>>>>>> development
  end

  def funds
    @funds
  end

  def top_up!(amount)
    @funds += amount
  end

  def touch_in
    raise "Insufficient Funds" if @funds < 2
    @touch_in = true
  end

  def touch_out
    @touch_in = false
  end

  def touched_in?
    @touch_in
  end

end

