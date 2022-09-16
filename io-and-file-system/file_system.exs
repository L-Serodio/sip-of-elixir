{:ok, file} = File.open("file.txt", [:write])

IO.binwrite(file, "hello world")

File.close(file)

{:ok, content} = File.read("file.txt")

IO.puts(content)
