defmodule Number do
  @moduledoc """
  Documentation for `Number`.
  """

  @doc """
  Number.

  ## Examples

      iex> Number.is_even?(6)
      true

  """
  def is_even?(num) do
    rem(num, 2) === 0
  end

  def is_prime?(num) do
    cond do
      num <= 0 -> false
      num > 0 ->
        count = for n <- 1..num do
          rem(num, n) === 0
        end
        Enum.count(count, &(&1 == true)) === 2
    end
  end

  def is_palindrome?(num) do
    cond do
      rem(num, 100) === 0 or num < 100 or num > 999 -> false
      num > 100 ->
        first_num = div(num, 100)
        remainder = rem(num, 100)
        second_num = div(remainder, 10)
        third_num = rem(remainder, 10)
        palindromed_num = 100*third_num + second_num*10 + first_num
        palindromed_num === num
    end
  end
end
