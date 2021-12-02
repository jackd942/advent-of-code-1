defmodule Day2 do
  defmodule Part1 do
    def run(input) do
      {depth, distance} =
        Enum.reduce(input, {_depth = 0, _distance = 0}, fn
          {:forward, amount}, {depth, distance} ->
            {depth, distance + amount}

          {:up, amount}, {depth, distance} ->
            {depth - amount, distance}

          {:down, amount}, {depth, distance} ->
            {depth + amount, distance}
        end)

      depth * distance
    end
  end

  defmodule Part2 do
    def run(input) do
      {depth, distance, _aim} =
        Enum.reduce(input, {_depth = 0, _distance = 0, _aim = 0}, fn
          {:forward, amount}, {depth, distance, aim} ->
            depth = depth + aim * amount

            {depth, distance + amount, aim}

          {:up, amount}, {depth, distance, aim} ->
            {depth, distance, aim - amount}

          {:down, amount}, {depth, distance, aim} ->
            {depth, distance, aim + amount}
        end)

      depth * distance
    end
  end

  def input do
    "inputs/2.txt"
    |> File.stream!()
    |> Stream.map(fn line ->
      {instruction_atom, amount_string} =
        case line do
          "up " <> amount -> {:up, amount}
          "down " <> amount -> {:down, amount}
          "forward " <> amount -> {:forward, amount}
        end

      {
        instruction_atom,
        amount_string
        |> String.trim()
        |> String.to_integer()
      }
    end)
  end

  def example_input do
    [
      {:forward, 5},
      {:down, 5},
      {:forward, 8},
      {:up, 3},
      {:down, 8},
      {:forward, 2}
    ]
  end
end
