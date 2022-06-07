defmodule CalculatorCaseTest do
  use ExUnit.Case
  doctest CalculatorCase

  test "greets the world" do
    assert CalculatorCase.hello() == :world
  end
end
