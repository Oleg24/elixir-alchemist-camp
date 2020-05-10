defmodule MoveFiles do
  def start do
    # get all the files in the current directory
    # create a directory called images
    # move all the files there 
    createDir()

    files = getFiles()

    num_matched_files = Enum.count(files)

    IO.puts("we matched #{num_matched_files} file(s)")

    moveFiles(files)
  end

  def getFiles do
    Path.wildcard("./*.{jpg,gif,bmp,png}")
  end

  def createDir do
    case File.mkdir("./images") do
      :ok -> IO.puts("./images directory successfully created")
      {:error, _} -> IO.puts("could not create the ./images directory")
    end
  end

  def moveFiles(files) do
    Enum.each(files, fn
      filename ->
        case(File.rename(filename, "./images/#{filename}")) do
          :ok ->
            IO.puts("#{filename} successfully moved to images directory")

          {_error, _} ->
            IO.puts("Error moving #{filename} to directory")
        end
    end)
  end
end
