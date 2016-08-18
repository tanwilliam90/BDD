require "rspec"
require_relative "car_garage"
require_relative 'tata'

describe Garage do
it "should create a garage collection" do
  my_garage = Garage.new
  my_car1 = Tata.new 2014
  my_car2 = Tata.new 2000
  my_garage.garage(my_car1)
  my_garage.garage(my_car2)
  expect(my_garage.garage?).to include(my_car2, my_car1)
  end
end
