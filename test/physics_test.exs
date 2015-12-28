defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "can calculate earth escape velocity" do
    assert 11.19 == Physics.Rocketry.escape_velocity(:earth)
  end

  test "can calculate mars escape velocity" do
    assert 5.01 == Physics.Rocketry.escape_velocity(:mars)
  end

  test "can calculate moon escape velocity" do
    assert 2.38 == Physics.Rocketry.escape_velocity(:moon)
  end

  test "can calculate earth orbital acceleration" do
    assert 9.52 ==   Float.ceil(Physics.Rocketry.orbital_acceleration(100), 2)
  end

  test "can stay in earth orbit between 3 and 5 hours" do
    assert 4.04 == Physics.Rocketry.orbital_term(6500)
  end

  # test "can calculate height" do
  #   assert 12789.99 == Physics.Rocketry.calculate_acceptable_orbital_term(Planets.earth, 4)
  # end
end
