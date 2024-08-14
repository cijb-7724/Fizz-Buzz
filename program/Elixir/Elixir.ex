# Elixir (Elixir 1.15.2)
defmodule Main do
  def create_list do
    1..100
    |> Enum.to_list()
  end
  def main do
    n = Main.create_list()
    for x <- n do
      if rem(x, 15) == 0 do
        IO.puts("FizzBuzz")
      else
        if rem(x, 3) == 0 do
          IO.puts("Fizz")
        else
          if rem(x, 5) == 0 do
            IO.puts("Buzz")
          else
            IO.puts(x)
          end
        end
      end
    end
  end
end
