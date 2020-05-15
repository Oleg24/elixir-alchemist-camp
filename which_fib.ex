# ask which fib they want to find 
# if greater than 45 => limit is 45 enter another number
# if 45 or less find fib 

defmodule WhichFib do
  def start do
    input = String.trim(IO.gets("Which fibonacci number do you want to find?\n"))
    {fib_number, ""} = Integer.parse(input)

    cond do
      fib_number > 45 ->
        IO.puts("Sorry the number you entered was too high, please try something lower")

      fib_number <= 45 ->
        {:ok, startTime } = DateTime.now("Etc/UTC");
        fib = fib(fib_number)
        {:ok, endTime } = DateTime.now("Etc/UTC");
        total = DateTime.diff(endTime, startTime, :millisecond);
        IO.puts("The #{fib_number}th in the Fibonacci sequence is #{fib}")
        IO.puts("It took #{total} milliseconds to get the answer!")
    end
  end


  def fib(0), do: 1
  def fib(1), do: 1
  def fib(n), do: fib(n-1) + fib(n-2)
end
