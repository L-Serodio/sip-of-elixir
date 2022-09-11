case {1, 2, 3} do
  {4, 5, 6} ->
    IO.puts("This clause won't match")
  {1, _x, 3} ->
    IO.puts("This clause will match and bind x to 2 in this clause")
  _ ->
    IO.puts("This clause would match any value")
end

cond do
  2 + 2 == 5 ->
    IO.puts("This will not be true")
  2 * 2 == 3 ->
    IO.puts("Nor this")
  1 + 1 == 2 ->
    IO.puts("But this will")
end

if true do
  IO.puts(:ok)
end

unless false do
  IO.puts(:ok)
end
