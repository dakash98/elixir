defmodule CharLists do
  @moduledoc """
  Documentation for `CharLists`.
  """

  @doc """
  CharLists

  ## Examples

      iex> CharLists.clean_email('däkäsh@outlook.com')
      'dakash@outlook.com'

  """
  def clean_email([]), do: ''
  def clean_email([head | tail]) when head === ?ä, do: 'a' ++ clean_email(tail)
  def clean_email([head | tail]) when (head >= ?a and head <= ?z) or (head === ?_) or (head === ?.) or (head === ?@), do: [head] ++ clean_email(tail)
end
