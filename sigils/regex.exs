regex = ~r/lucas|serodio/

IO.puts "\"lucas\" =~ regex\n #{"lucas" =~ regex}"

IO.puts "\"gonçalves\" =~ regex\n #{"gonçalves" =~ regex}"

IO.puts "\"HELLO\" =~ ~r/hello/i\n #{"HELLO" =~ ~r/hello/i}" # The i modifier makes a regular expression case insensitive
