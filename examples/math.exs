defmodule Math do
  def sum(x, y) do
    x + y
  end

  def zero?(0), do: true
  def zero?(x) when is_integer(x), do: false
end

IO.puts Math.sum(1, 2)
IO.puts Math.zero?(0)
IO.puts Math.zero?(1)

fun = &Math.zero?/1
IO.puts(is_function fun)
IO.puts(fun.(0))

sum = &(&1 + &2)
IO.puts("sum.(2, 2) = #{sum.(2, 2)}")
