defmodule NumberTest do
  use ExUnit.Case
  doctest Number

  test "greets the world" do
    assert Number.hello() == :world
  end
end
