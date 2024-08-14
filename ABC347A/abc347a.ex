defmodule Main do
  def main do
    [n, k] = read_integer_array()
    read_integer_array()
    |> solve(k)
    |> IO.puts
  end

  def solve [p1| p] do
    case p do
      [] -> 0
      _ ->
        p
        |> Enum.max
        |> (fn x -> Enum.max([x - p1 + 1 , 0]) end).()
    end
  end

　def solve d, p, q do
    d
    |> Enum.min()
    |> Kernel.+(q)
    |> (fn dq -> Enum.min([dq, p]) end).()
  end

  def solve [x|a], k do
    case
  end

  # 文字列読み込み
  # in:
  # rikka
  # out:
  # "rikka"
  def read_string do
    IO.read(:line)
    |> String.trim
  end

  # 整数読み込み
  # in:
  # 155
  # out:
  # 155 (int)
  def read_integer do
    read_string()
    |> String.to_integer
  end

  # 文字列配列読み込み
  # in:
  # rikka akane namiko
  # out:
  # ["rikka", "akane", "namiko"]
  def read_string_array do
    read_string()
    |> String.split(" ", trim: true)
  end

  # 整数配列読み込み
  # in:
  # 155 149 150
  # out:
  # [155, 149, 150]
  def read_integer_array do
    read_string_array()
    |> Enum.map(&String.to_integer/1)
  end
end
