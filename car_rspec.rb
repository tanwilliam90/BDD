require 'rspec'
require_relative 'tesla'
require_relative 'tata'
require_relative 'toyota'

describe 'Car' do
  it "should create the Car class" do
    expect{Car.new 1994}.to_not raise_error
  end

  it "should check that a car has 4 wheels" do
    test_car = Car.new 1994
    expect(test_car.number_of_wheels).to be 4
  end

  it "should be a Tesla car" do
    expect{Tesla.new 19932}.to_not raise_error
  end

  it "should be a Tata car" do
    expect{Tata.new 2012}.to_not raise_error
  end

  it "should be a Toyota car" do
    expect{Toyota.new 2016}.to_not raise_error
  end

  it "should have a model year" do
    expect{Vehicle.new 1994}.to_not raise_error
  end

  it "should determine if the lights are on or off" do
    test_car = Car.new 2016
    expect(test_car.light_status).to eq "off"
  end

  it "should be able to signal left or right and turn off" do
    test_car = Car.new 1994
    expect(test_car.turn_signal).to eq "off"
    test_car.left_signal
    expect(test_car.turn_signal).to eq "left"
    test_car.right_signal
    expect(test_car.turn_signal).to eq "right"
  end

  it "should determine the speed of the car" do
    test_car = Car.new 2000
    expect(test_car.speed_of_car).to be 0
  end

  it "should increase the speed of a Tesla by 10 " do
    test_car = Tesla.new 19
    expect(test_car.accelerate).to be 10
  end

  it "should decrease the speed of a Tesla by 7" do
    test_car = Tesla.new(2009)
    test_car.accelerate
    test_car.brake
    expect(test_car.speed_of_car).to be 3
  end

  it "should tell me all of the cars information when I ask" do
    test_car = Car.new 1994
    expect(test_car.to_s).to eq "4 off 0 1994 off"
  end

  it "should be a collection of cars" do
    
  end
end
