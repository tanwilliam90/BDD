class Garage
  def initialize
    @garage = []
  end
  
  def garage(cars)
    @garage.push(cars)
  end

  def garage?
    @garage
  end
end
