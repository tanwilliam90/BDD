require_relative 'car'

class Toyota < Car
  def accelerate
    super(7)
  end
  def brake
    super(5)
  end
end
