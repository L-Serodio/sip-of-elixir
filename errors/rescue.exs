try do
  raise "oops"
rescue
  e in RuntimeError -> IO.puts inspect e
end
