defmodule Day1Test do
  use ExUnit.Case
  alias Day1.Part1
  alias Day1.Part2

  describe "day 1" do
    test "part 1" do
      assert Part1.run([]) == 0
      assert Part1.run([1]) == 0
      assert Part1.run([1, 2]) == 1
      assert Part1.run([1, 1]) == 0
      assert Part1.run([2, 1]) == 0
      assert Part1.run([2, 2, 2]) == 0
      assert Part1.run([3, 2, 1]) == 0
      assert Part1.run([1, 2, 3]) == 2
      assert Part1.run([1, 2, 2]) == 1

      assert Part1.run(Day1.example_input()) == 7
      assert Part1.run(Day1.input()) == 1374
    end

    test "part 2" do
      assert Part2.run([]) == 0
      assert Part2.run([1]) == 0
      assert Part2.run([1, 2]) == 0
      assert Part2.run([1, 2, 3]) == 0
      assert Part2.run([1, 1, 1, 1]) == 0
      assert Part2.run([1, 2, 3, 4]) == 1

      assert Part2.run(Day1.example_input()) == 5
      assert Part2.run(Day1.input()) == 1418
    end
  end
end
