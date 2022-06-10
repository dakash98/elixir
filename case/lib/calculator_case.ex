defmodule CalculatorCase do
  @moduledoc """
  Documentation for `CalculatorCase`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> CalculatorCase.hello()
      :world

  """
  def calculate(num_1, num_2, operator) do
    case operator do
      "+" -> num_1 + num_2
      "-" -> num_1 - num_2
      "*" -> num_1 * num_2
      "/" -> div(num_1, num_2)
      _ -> :none
    end
  end

  def calculate_shapes_area(shape) do
    case shape do
      "rectangle" -> 9 * 5
      "square" -> 5 * 5
      "circle" -> 3.14 * 5 * 5
      _ -> :none
    end
  end
end
