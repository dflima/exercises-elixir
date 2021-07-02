defmodule Exercise1 do
  def print_numbers do
    1..100
    |> Enum.each(fn number ->
      cond do
        rem(number, 3) == 0 and rem(number, 5) == 0 ->
          IO.puts("multiple of 3 and 5")  
        rem(number, 3) == 0 ->
          IO.puts("multiple of 3")  
        rem(number, 5) == 0 ->
          IO.puts("multiple of 5")
        true ->
          IO.puts(number)
      end
    end)
  end
end
