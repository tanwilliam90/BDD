class Vehicle

  def initialize(year)
    @model_year = year
    @lights = "off"
  end
=begin
  def model_year
    @model_year
  end

  def light_switch
    if @lights == "off"
      @lights = "on"
    elsif @lights == "on"
      @lights = "off"
    end
  end
=end
  def light_status
    @lights
  end

  def to_s
    @model_year.to_s + " " + @lights.to_s
  end
end
