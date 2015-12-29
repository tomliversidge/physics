defmodule Calcs do

  def to_nearest_tenth(val) do
    Float.ceil(val, 2)
  end

  def to_two_decimal_places(val) do
    Float.round(val, 2)
  end
  
  def to_km(velocity) do
    velocity / 1000
  end

  def to_m(kilometers) do
    kilometers * 1000
  end

  def square_root(val) do
    :math.sqrt(val)
  end

  def cube_root(val) do
    :math.pow(val, 1 / 3)
  end

  def squared(val) do
    val * val
  end

  def cubed(val) do
    val * val * val
  end

  def seconds_to_hours(val) do
    val / 3600 |> to_nearest_tenth
  end

  def hours_to_seconds(val) do
    val * 3600
  end
end
