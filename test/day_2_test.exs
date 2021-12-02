defmodule Day2Test do
  use ExUnit.Case
  alias Day2.Part1
  alias Day2.Part2

  test "part 1" do
    assert Part1.run(Day2.example_input()) == 150
    assert Part1.run(Day2.input()) == 1_692_075
  end

  test "part 2" do
    assert Part2.run(Day2.example_input()) == 900
    assert Part2.run(Day2.input()) == 1_749_524_700
  end
end
