defmodule OTPTest do
  use ExUnit.Case

  test "A Simple service" do
  {:ok, pid} = SolarFlareRecorder.start_link()
  SolarFlareRecorder.record(pid, %{classification: :M, scale: 22})
  SolarFlareRecorder.record(pid, %{classification: :X, scale: 33})
  res = SolarFlareRecorder.current(pid)
  IO.inspect res
end

end
