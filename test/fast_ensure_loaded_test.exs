defmodule FastEnsureLoadedTest do
  use ExUnit.Case
  doctest FastEnsureLoaded

  test "returns :ok upon loading module" do
    assert FastEnsureLoaded.ensure_loaded(IO) == :ok
  end
end
