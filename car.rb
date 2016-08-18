require_relative 'vehicle'

class Car < Vehicle
  def initialize(year)
    super(year)
    @wheels = 4
    @signal = "off"
    @speed = 0
  end

  def number_of_wheels
    @wheels
  end

  def speed_of_car
    @speed
  end
  def accelerate(accel)
    @speed = @speed + accel
  end

  def stop
    @speed = 0
  end

  def brake(brake)
    @speed = @speed - brake
    if @speed <= 0
      @speed = 0
    end
  end

#purpose : to create a left signal that turns on or off
#signature: takes nothing, turns left signal on or off
#example: left_signal returns left signal on
#         left_signal returns left signal off
  def left_signal
    if @signal == "left"
      @signal = "off"
    else
      @signal = "left"
    end
  end

  def right_signal
    if @signal == "right"
      @signal = "off"
    else
      @signal = "right"
    end
  end

  def turn_signal
    @signal
  end

  def to_s
    @wheels.to_s + " " + @signal.to_s + " " + @speed.to_s + " " + super
  end
end
