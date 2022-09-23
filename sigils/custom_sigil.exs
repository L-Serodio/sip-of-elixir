defmodule CustomSigil do
  def sigil_i(string, []), do: String.to_integer(string)
  def sigil_i(string, [?n]), do: -String.to_integer(string)
end

# in iex do
# import CustomSigil
# ~i(13)
# ~i(42)n
