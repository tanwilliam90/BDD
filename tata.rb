require_relative 'car'

class Tata < Car
  def accelerate
    super(2)
  end

  def brake
    super(1.25)
  end
end
