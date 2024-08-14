defmodule Main do
  def read_input do
    [n, k] =
        IO.gets("")
        |> String.trim()
        |> String.split()
        |> Enum.map(&String.to_integer/1)

    a =
      IO.gets("")
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_integer/1)

    {n, k, a}
  end

  def main do
    {n, k, a} = read_input()
    a
    |> Enum.filter(&(rem(&1, k) == 0))
    |> Enum.map(&(div(&1, k)))
    |> Enum.each(&IO.puts/1)
  end
end
