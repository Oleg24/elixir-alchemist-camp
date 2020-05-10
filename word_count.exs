thing_to_count =
  IO.gets("What do you want to count - words, characters or lines?") |> String.trim()

filename = IO.gets("File to count the #{thing_to_count} from: ") |> String.trim()

case thing_to_count do
  "words" ->
    items =
      File.read!(filename)
      |> String.split(~r{(\\n|[^\w'])+})
      |> Enum.filter(fn x -> x != "" end)

  "characters" ->
    items =
      File.read!(filename)
      |> String.split(~r{(\\n|[^\w'])+})
      |> Enum.filter(fn x -> x != "" end)

  "lines" ->
    items =
      File.read!(filename)
      |> String.split(~r{(\\n|[^\w'])+})
      |> Enum.filter(fn x -> x != "" end)
end

items |> Enum.count() |> IO.puts()
