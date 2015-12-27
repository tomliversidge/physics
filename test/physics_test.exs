defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "calculate escape velocity" do
    assert 11.2 == Physics.Rocketry.escape_velocity(:earth)
  end
end
