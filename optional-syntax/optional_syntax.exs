# do-end blocks

if true do
  :this
else
  :that
end

# keyword lists
if true, do: :this, else: :that

# if(variable?, [{:do, Call.this()}, {:else, Call.that()}])

# defmodule Math do
#   def add(a, b) do
#     a + b
#   end
# end

# defmodule(Math, [
#   {:do, def(add(a, b), [{:do, a + b}])}
# ])
