defmodule Exercise2 do
  def factorial(number, acc \\ 1) do
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



"""
defmodule Exercise2 do
  def factorial(number) do
    if number < 0 do
      raise "number must be greater than 0"
    end

    if number == 0 or number == 1 do
      1
    else
      number * factorial(number-1)
    end
  end
end
"""