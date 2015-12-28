defmodule Calcs do

  def to_nearest_tenth(val) do
    Float.ceil(val, 2)
  end

  def to_km(velocity) do
    velocity / 1000
  end

  def square_root(val) do
    :math.sqrt(val)
  end

end
