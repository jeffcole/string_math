defmodule StringMathTest do
  use ExUnit.Case
  doctest StringMath

  test "handles addition" do
    assert StringMath.compute("1+2") == 3
  end

  test "handles multiplication" do
    assert StringMath.compute("2*3") == 6
  end

  test "handles both addition and multiplication" do
    assert StringMath.compute("1+2*3") == 7
  end
end
