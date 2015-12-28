defmodule Physics.Rocketry do

  import Calcs
  import Physics.Laws

  def escape_velocity(:earth) do
    Planets.earth
    |> escape_velocity
  end

  def escape_velocity(:mars) do
    Planets.mars
    |> escape_velocity
  end

  def escape_velocity(:moon) do
    Planets.moon
    |> escape_velocity
  end

  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> to_km
      |> to_nearest_tenth
  end

  def orbital_speed(height, planet) do
    newtons_gravitational_constant * planet.mass / orbital_radius(height, planet.radius)
    |> square_root
  end

  defp orbital_radius(height, radius) do
    radius + (height |> to_m)
  end

  def orbital_acceleration(height, planet) do
    (orbital_speed(height, planet) |> squared) / orbital_radius(height, planet.radius)
  end

  defp calculate_escape(%{mass: mass, radius: radius}) do
    2 * newtons_gravitational_constant * mass / radius
      |> square_root
  end

end
