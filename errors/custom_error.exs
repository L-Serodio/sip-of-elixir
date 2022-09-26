defmodule CustomError do
  defexception message: "Default message"
end

raise CustomError, message: "Custom error message"
