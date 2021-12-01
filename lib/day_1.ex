defmodule Day1 do
  #
  # part 1
  #

  def part_1(input), do: part_1(input, 0)
  def part_1([], increases_count), do: increases_count
  def part_1([_], increases_count), do: increases_count

  def part_1([a, b | tail], increases_count) when b > a,
    do: part_1([b | tail], increases_count + 1)

  def part_1([_a, b | tail], increases_count), do: part_1([b | tail], increases_count)

  #
  # part 2
  #

  def part_2(input), do: part_2(input, 0)
  def part_2([], increases_count), do: increases_count
  def part_2([_], increases_count), do: increases_count
  def part_2([_, _], increases_count), do: increases_count
  def part_2([_, _, _], increases_count), do: increases_count

  def part_2([a, b, c, d | tail], increases_count) do
    if b + c + d > a + b + c do
      part_2([b, c, d | tail], increases_count + 1)
    else
      part_2([b, c, d | tail], increases_count)
    end
  end
end
