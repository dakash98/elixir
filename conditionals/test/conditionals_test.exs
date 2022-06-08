defmodule ConditionalsTest do
  use ExUnit.Case
  doctest Conditionals

  test "greets the world" do
    assert Conditionals.hello() == :world
  end
end
