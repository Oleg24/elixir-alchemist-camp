defmodule GreeterApp do
  def greet do
    name = String.trim(IO.gets("Hi! What is your name?\n"))
    welcome_message(name)
  end

  def welcome_message(name) do
    case String.downcase(name) do
      "oleg" ->
        IO.puts("Hey #{name}! That's my name too!")

      _ ->
        IO.puts("hey #{name}! Welcome to Elixir")
    end
  end
end
