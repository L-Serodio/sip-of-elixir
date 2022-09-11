map = %{:a => 1, 2 => :b}
IO.puts(map[:a]) # 1
IO.puts(map[2]) # :b
IO.puts(map[:c]) # nil

# Maps allow any value as a key.
# Maps’ keys do not follow any ordering.

new_map = Map.put(map, :c, 3)
IO.puts(new_map[:c]) # 3

new_map2 = %{map | 2 => "two"}
IO.puts(new_map2[2]) # two

# When all the keys in a map are atoms, you can use the keyword syntax for convenience:
m = %{a: 1, b: 2}
IO.puts(m.a)
