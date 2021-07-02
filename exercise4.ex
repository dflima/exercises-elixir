defmodule Exercise4 do
  use GenServer

  @doc false
  def start_link do
    GenServer.start_link(__MODULE__, Map.new, name: __MODULE__)
  end

  def calculate(number, timeout \\ 50_000) do
    GenServer.call(__MODULE__, {:calculate, number}, timeout)
  end

  @impl true
  def init(state) do
    {:ok, state}
  end

  def handle_call({:calculate, number}, from, state) do
    spawn(fn ->
      factorial = factorial(number)
      GenServer.reply(from, factorial)
    end)
    {:noreply, state}
  end

  defp factorial(number, acc \\ 1) do
    if number < 0 do
      raise "number must be greater than 0"
    end

    if number == 0 or number == 1 do
      acc
    else
      factorial(number-1, acc * number)
    end
  end
end