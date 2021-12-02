defmodule Day1 do
  defmodule Part1 do
    def run(input) do
      Enum.zip_reduce(input, Enum.drop(input, 1), 0, fn
        a, b, increments_count when a < b ->
          increments_count + 1

        _, _, increments_count ->
          increments_count
      end)
    end
  end

  defmodule Part2 do
    def run(input) do
      Enum.zip_reduce(input, Enum.drop(input, 3), 0, fn
        a, b, increments_count when a < b ->
          increments_count + 1

        _, _, increments_count ->
          increments_count
      end)
    end
  end

  def input do
    "inputs/1.txt"
    |> File.stream!()
    |> Stream.map(&String.to_integer(String.trim(&1)))
  end

  def example_input do
    [
      199,
      200,
      208,
      210,
      200,
      207,
      240,
      269,
      260,
      263
    ]
  end
end
