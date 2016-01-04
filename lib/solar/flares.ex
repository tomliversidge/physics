defmodule Solar.Flare do

  defstruct [
    classification: :M,
    scale: 0,
    power: 0,
    is_deadly: false,
    date: nil
  ]

  def load(flares) do
    for flare <- flares, do: flare |> calculate_power |> calculate_deadliness
  end

  def calculate_deadliness(flare) do
    if flare.power > 1000 do
      %{flare | is_deadly: true}
    else
      %{flare | is_deadly: false}
    end
  end

  def calculate_power(flare) do
    factor = case flare.classification do
      :M -> 10
      :X -> 1000
      :C -> 1
    end
    %{flare | power: flare.scale * factor}
  end

  def no_eva(flares) do
    flares = load(flares)
    Enum.filter flares, fn(flare) ->
      flare.power > 1000
    end
  end

  def total_flare_power(flares) do
    flares = load(flares)
    (for flare <- flares, do: flare.power)
      |> Enum.sum
    end
  end
