defmodule Calculator do
  @moduledoc """
  Documentation for `Calculator`.
  """

  @doc """
  Calculator

  ## Examples

      iex> Calculator.add(1, 2)
      3

  """
  def add(var1, var2) do
    var1 + var2
  end

  def subtract(var1, var2) do
    var1 - var2
  end

  def multiply(var1, var2) do
    var1 * var2
  end

  def divide(var1, var2) do
    div(var1, var2)
  end

  def square_number(num) do
    num*num
  end

  def square_root(num) do
    :math.sqrt(num)
  end

  def power_of_number(num, power) do
    :math.pow(num, power)
  end
end
