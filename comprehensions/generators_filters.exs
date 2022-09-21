for n <- 1..4, do: n * n
# [1, 4, 9, 16]

for n <- 0..5, rem(n, 3) == 0, do: n * n
#  [0, 9]

map = for {key, val} <- %{"a" => 1, "b" => 2}, into: %{}, do: {key, val * val}
IO.puts inspect map
