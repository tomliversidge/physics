defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  setup do
    planets = [
        %{name: :earth, escape_velocity: 11.19},
        %{name: :mars, escape_velocity: 5.01},
        %{name: :moon, escape_velocity: 2.38}
      ]
      {:ok, data: planets}
  end

  test "can calculate escape velocity", %{data: planets} do
    Enum.each(planets,
           fn(planet) ->
             assert planet.escape_velocity == Physics.Rocketry.escape_velocity(planet.name)
           end)
  end

  test "can calculate earth orbital acceleration" do
    assert 9.52 ==   Float.ceil(Physics.Rocketry.orbital_acceleration(100), 2)
  end

  test "can stay in earth orbit 4 hours" do
    assert 4.0 == Physics.Rocketry.orbital_term(6419)
  end

  test "can calculate height" do
    assert 6419.99 == Physics.Rocketry.calculate_acceptable_orbital_term(Planets.earth, 4)
  end
end
