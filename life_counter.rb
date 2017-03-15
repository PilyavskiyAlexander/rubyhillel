class LifeCounter
  DEFAULT_LIFE_COUNTER = 7
  attr_reader :life_count

  def initialize (life_count = DEFAULT_LIFE_COUNTER)
    @life_count = life_count
  end

  def dead?
    @life_count == 0
  end

  def decrement
    @life_count -= 1
  end
end