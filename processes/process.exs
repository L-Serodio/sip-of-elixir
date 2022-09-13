pid = spawn(fn -> 1 + 2 end)
IO.puts Process.alive?(pid)

send(self(), {:hello, "world"}) # {:hello, "world"}

receive do
  {:hello, msg} -> IO.puts msg
  {:world, _msg} -> IO.puts "won't match"
end
