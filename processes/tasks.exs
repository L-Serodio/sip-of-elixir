task1 = Task.start(fn -> IO.puts "Executando tarefa..." end)

IO.puts Process.alive?(elem(task1, 1))

IO.puts "-----------"

task = Task.async(fn -> "Hello world from async task" end)

IO.puts "Self PID = #{inspect self()}"
IO.puts "Task PID = #{inspect task.pid}"

result = Task.await(task)
IO.puts result
