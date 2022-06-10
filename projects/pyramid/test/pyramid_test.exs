defmodule PyramidTest do
  use ExUnit.Case
  doctest Pyramid

  test "greets the world" do
    assert Pyramid.hello() == :world
  end
end
