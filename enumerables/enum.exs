Enum.map([1, 2, 3], fn x -> IO.puts x * 2 end)

Enum.map(%{1 => 2, 3 => 4}, fn {k, v} -> IO.puts k * v end)

value = Enum.reduce(1..3, 0, &+/2)
IO.puts value

odd? = &(rem(&1, 2) != 0)
Enum.filter(1..3, odd?) # [1, 3]

val = 1..100_000
  |> Enum.map(&(&1 * 3))
  |> Enum.filter(odd?)
  |> Enum.sum()

# Without pipe operator => Enum.sum(Enum.filter(Enum.map(1..100_000, &(&1 * 3)), odd?))
IO.puts "Value: #{val}"

stream1 = Stream.cycle([1, 2, 3])
IO.puts Enum.take(stream1, 10) # [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]

stream2 = File.stream!("file.txt")
IO.puts stream2.path
IO.puts Enum.take(stream2, 10)
