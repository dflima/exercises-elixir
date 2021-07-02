defmodule Exercise3 do
  def start do
    pid = spawn(fn ->
      state = %{}
      loop(state)
    end)
    Process.register(pid, :server)
  end

  def loop(_state) do
    receive do
      {:ping, from} ->
        send(from, "Shell got pong")
        loop()
      _ ->
        IO.puts("Unexpected message")
        loop()
    end
  end
end