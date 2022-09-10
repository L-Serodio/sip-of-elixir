{a, b, c} = {:hello, "world", 42}
IO.puts(a) # hello
IO.puts(b) # world
IO.puts(c) # 42

{:ok, result} = {:ok, 13}
# this example asserts that the left side will only match the right side
# when the right side is a tuple that starts with the atom :ok
IO.puts("result: #{result}")

[x, y, z] = [1, 2, 3]
IO.puts("x = #{x}, y = #{y}, z = #{z}")

[_head | _tail] = [1, 2, 3]
# head -> 1
# tail -> [2, 3]
