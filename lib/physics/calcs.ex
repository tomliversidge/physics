defmodule Calcs do

  def rounded_to_nearest_tenth(val) do
    Float.ceil(val, 1)
  end

  def convert_to_km(velocity) do
    velocity / 1000
  end

end
