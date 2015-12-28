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
end
