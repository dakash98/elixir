defmodule ConstantsTest do
  use ExUnit.Case
  doctest Constants

  test "greets the world" do
    assert Constants.hello() == :world
  end
end
