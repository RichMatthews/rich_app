defmodule RichAppTest do
  use ExUnit.Case
  doctest RichApp

  test "greets the world" do
    assert RichApp.hello() == :world
  end
end
