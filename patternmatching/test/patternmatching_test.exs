defmodule PatternmatchingTest do
  use ExUnit.Case
  doctest Patternmatching

  test "greets the world" do
    assert Patternmatching.hello() == :world
  end
end
