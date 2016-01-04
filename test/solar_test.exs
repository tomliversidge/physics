defmodule SolarTest do
  use ExUnit.Case
  use Timex
  import Solar.Flare
  # setup macro runs before every test. If you only want a
  # single setup routine run before all tests you use setup_all.
  setup do
   flares = [
     %Solar.Flare{classification: :X, scale: 99, date: Date.from({1859, 8, 29})},
     %Solar.Flare{classification: :M, scale: 5.8, date: Date.from({2015, 1, 12})},
     %Solar.Flare{classification: :M, scale: 1.2, date: Date.from({2015, 2, 9})},
     %Solar.Flare{classification: :C, scale: 3.2, date: Date.from({2015, 4, 18})},
     %Solar.Flare{classification: :M, scale: 83.6, date: Date.from({2015, 6, 23})},
     %Solar.Flare{classification: :C, scale: 2.5, date: Date.from({2015, 7, 4})},
     %Solar.Flare{classification: :X, scale: 72, date: Date.from({2012, 7, 23})},
     %Solar.Flare{classification: :X, scale: 45, date: Date.from({2003, 11, 4})},
   ]
   {:ok, data: flares}
 end

 test "A Solar Flare is a Map with a special key" do
   assert %Solar.Flare{}.__struct__ == Solar.Flare
 end

 test "We have 8 solar flares", %{data: flares} do
    assert length(flares) == 8
  end

  test "Can calculate power" do
    assert 99000 == calculate_power(%{classification: :X, scale: 99, power: 0}).power
  end

  test "Go inside", %{data: flares} do
    d = no_eva(flares)
    assert length(d) == 3
  end

  test "sum total exposure to all flares", %{data: flares} do
    assert 216911.7 == total_flare_power(flares)
  end

end
