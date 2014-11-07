class Train

  def initialize
  @carriages = nil
  @arrived = nil
  end

  def has_carriages?
    @carriages = true
  end

  def arrived?
    @arrived = true
  end
end
