defmodule Patternmatching do
  @moduledoc """
  Documentation for `Patternmatching`.
  """

  @doc """
  Patternmatching

  ## Examples

      iex> Patternmatching.factorial(2)
      2

  """

  # find factorial of a number
  def factorial(1), do: 1

  def factorial(n) when n > 0, do: n * factorial(n-1)

  def factorial(n) when n <= 0, do: "Factorial of only numbers greater than 0"


  # check if age is present
  def is_age_present?(%{name: name, age: age}), do: true

  def is_age_present?(%{name: name}), do: false


  # check eligibility of a candidate
  def is_eligible_candidate?(age) when is_integer(age) === false, do: false

  def is_eligible_candidate?(age) when age >= 18, do: true

  def is_eligible_candidate?(age) when age < 18, do: false

  # Write a recursive function that takes a number and returns the sum of all the numbers from zero to that number.
  def cummulative_addition(num) when num > 0, do: num + cummulative_addition(num-1)

  def cummulative_addition(1), do: 1

  def cummulative_addition(num) when num <= 0, do: 0

  # Write a recursive function that takes a list of numbers as an input and returns the product of all the numbers in the list.
  def cummulative_product(num) when num > 0, do: num * cummulative_product(num-1)

  def cummulative_product(num) when num <= 1, do: 1

end
