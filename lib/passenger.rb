class Passenger

  def touch_in
    @touch_in = true
  end

  def touch_out
    @touch_in = false
  end

  def touched_in?
    @touch_in
  end

end
