defmodule Math do
  def sum(x, y) do
    x + y
  end

  def zero?(0), do: true
  def zero?(x) when is_integer(x), do: false

  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator), do: accumulator

  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]), do: []
end

IO.puts Math.sum(1, 2)
IO.puts Math.zero?(0)
IO.puts Math.zero?(1)

fun = &Math.zero?/1
IO.puts(is_function fun)
IO.puts(fun.(0))

sum = &(&1 + &2)
IO.puts("sum.(2, 2) = #{sum.(2, 2)}")

IO.puts Math.sum_list([1, 2, 3], 0) # 6
IO.puts Math.double_each([1, 2, 3]) # [2, 4, 6]
