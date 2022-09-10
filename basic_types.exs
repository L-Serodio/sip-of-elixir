# Basic types:
# 1 -> integer
# 0x1F -> integer
# 1.0 -> float
# true -> boolean
# :atom -> atom / symbol
# "Elixir" -> string
# ["a", "b", "c"] -> list
# {1, 2, 3} -> tuple

IO.puts("(10 / 2) -> #{10 / 2}") # 5.0 float
IO.puts("div(10, 2) -> #{div(10, 2)}") # 5 integer

IO.puts(String.length("Hello")) # 5

add = fn x, y -> x + y end # anonymous functions
IO.puts(add.(1, 2))

double = fn x -> add.(x, x) end # closure
IO.puts(double.(2))

list = [1, 2, 3, 4, 5, 6, 7, 8]
IO.puts(length list)
# [1, 2, 3] ++ [4, 5, 6] -> [1, 2, 3, 4, 5, 6]
# [1, 2, 3] -- [1, 2] -> [3]
# hd list -> 1
# tl list -> [2, 3, 4, 5, 6, 7, 8]

tuple = {:ok, "hello"}
IO.puts(elem(tuple, 1)) # hello
