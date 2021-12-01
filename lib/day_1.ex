defmodule Day1 do
  @spec part_1([integer()]) :: integer()
  def part_1(input), do: part_1(input, 0)
  def part_1([], increases_count), do: increases_count
  def part_1([_], increases_count), do: increases_count

  def part_1([a, b | tail], increases_count) when b > a,
    do: part_1([b | tail], increases_count + 1)

  def part_1([_a, b | tail], increases_count), do: part_1([b | tail], increases_count)

  @spec part_2([integer()]) :: integer()
  def part_2(input), do: part_2(input, 0)
  def part_2([], increases_count), do: increases_count
  def part_2([_], increases_count), do: increases_count
  def part_2([_, _], increases_count), do: increases_count
  def part_2([_, _, _], increases_count), do: increases_count

  def part_2([a, b, c, d | tail], increases_count) when d > a,
    do: part_2([b, c, d | tail], increases_count + 1)

  def part_2([_a, b, c, d | tail], increases_count),
    do: part_2([b, c, d | tail], increases_count)
end
