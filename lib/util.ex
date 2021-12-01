defmodule AOC.Util do
  def input_file_name(day, input) do
    Path.join([File.cwd!(), "inputs", "day#{day}", "input#{input}.txt"])
  end

  def input_file(day, input) do
    input_file_name(day, input)
    |> File.read!()
  end

  def input_lines(day, input) do
    input_file_name(day, input)
    |> File.stream!()
    |> Enum.map(&String.trim/1)
  end

  def input_integers(day, input) do
    input_lines(day, input)
    |> Enum.map(&String.to_integer/1)
  end
end
