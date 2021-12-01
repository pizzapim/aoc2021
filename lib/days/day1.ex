defmodule AOC.Day1 do
  def part1 do
    AOC.Util.input_integers(1, 1)
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.map(fn [x, y] -> y > x end)
    |> Enum.count(& &1)
  end

  def part2 do
    AOC.Util.input_integers(1, 1)
    |> Enum.chunk_every(3, 1, :discard)
    |> Enum.map(&Enum.sum/1)
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.map(fn [x, y] -> y > x end)
    |> Enum.count(& &1)
  end
end
