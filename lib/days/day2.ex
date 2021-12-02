defmodule AOC.Day2 do
  def parse_input do
    AOC.Util.input_lines(2, 1)
    |> Enum.map(fn l ->
      [dir, amount] = String.split(l, " ")
      {String.to_atom(dir), String.to_integer(amount)}
    end)
  end

  def part1 do
    parse_input()
    |> Enum.reduce({0, 0}, fn
      {:forward, amount}, {distance, depth} -> {distance + amount, depth}
      {:down, amount}, {distance, depth} -> {distance, depth + amount}
      {:up, amount}, {distance, depth} -> {distance, depth - amount}
    end)
  end

  def part2 do
    parse_input()
    |> Enum.reduce({0, 0, 0}, fn
      {:down, amount}, {distance, depth, aim} -> {distance, depth, aim + amount}
      {:up, amount}, {distance, depth, aim} -> {distance, depth, aim - amount}
      {:forward, amount}, {distance, depth, aim} -> {distance + amount, depth + aim * amount, aim}
    end)
  end
end
