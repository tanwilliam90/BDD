require_relative 'car'

class Tesla < Car

  def accelerate
    super(10)
  end

  def brake
    super(7)
  end
end
