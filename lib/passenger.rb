class Passenger

  @touch_in

  def touch_in
    @touch_in = true
  end

  def touched_in?
    @touch_in
  end

  def touch_out
    @touch_in = false
  end

end
