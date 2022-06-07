defmodule Pyramid do
  @moduledoc """
  Documentation for `Pyramid`.
  """

  @doc """
  Pyramid

  ## Examples

      iex> Pyramid.pyramid_1()
      *
      * *
      * * *
      * * * *
      * * * * *

  """

  # *
  # * *
  # * * *
  # * * * *
  # * * * * *
  def pyramid_1(rows) do
    for i <- 1..rows do
      IO.puts(String.duplicate("*", i))
    end
  end

  # * * * * *
  # * * * *
  # * * *
  # * *
  # *
  def rev_pyramid_1(rows) do
    for i <- rows..1 do
      IO.puts(String.duplicate("*", i))
    end
  end

  #         *
  #       * * *
  #     * * * * *
  #   * * * * * * *
  # * * * * * * * * *
  def pyramid_2(rows) do
    for i <- 1..rows, rem(i, 2) != 0 do
      IO.puts("#{String.duplicate(" ", div(rows-i, 2))}#{String.duplicate("*", i)}")
    end
  end

  # * * * * * * * * *
  #   * * * * * * *
  #     * * * * *
  #       * * *
  #         *
  def rev_pyramid_2(rows) do
    for i <- rows..1, rem(i, 2) != 0 do
      IO.puts("#{String.duplicate(" ", div(rows-i, 2))}#{String.duplicate("*", i)}")
    end
  end

  # 1
  # 2 3
  # 4 5 6
  # 7 8 9 10
  def pyramid_3(num) do
    count = 1
    last_val = 0
    for i <- 1..num do
      count = count + 1
      IO.puts(i)
    end
  end
end
