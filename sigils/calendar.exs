date = ~D[2022-09-22]
IO.puts date
IO.puts "Day = #{date.day}\nMonth = #{date.month}\nYear = #{date.year}"

IO.puts "-----------"

time = ~T[23:21:54.0]
IO.puts time
IO.puts "Hour = #{time.hour}\nMinute = #{time.minute}\nSecond = #{time.second}"

IO.puts "-----------"

ndt = ~N[2022-09-22 23:23:07]
IO.puts ndt

IO.puts "-----------"

dt = ~U[2022-09-22 23:25:03Z]
IO.puts dt
