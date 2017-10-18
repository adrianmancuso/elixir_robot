defmodule TableTest do
  use ExUnit.Case, async: true

  test "table struct can be created" do
    assert %Table{} != nil
  end

  test "table dimensions default to 5 x 5" do
    assert %Table{} == %Table{length: 5, width: 5}
  end

  test "table dimensions can be set" do
    thin_table = %Table{length: 100, width: 1}
    assert thin_table.width == 1
  end
end
