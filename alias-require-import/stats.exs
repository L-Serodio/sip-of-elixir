defmodule Stats do
  # alias Math.List, as: List
  require Integer

  def foo, do: IO.puts Integer.is_odd(3)

  def bar do
    import List, only: [duplicate: 2]
    IO.puts duplicate("Hello_", 3)
  end
end

Stats.foo
Stats.bar
