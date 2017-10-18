defmodule ControllerTest do
  use ExUnit.Case, async: true

  test "can place a robot" do
    assert Controller.place(0, 0, "NORTH") == %ToyRobot.Robot{position: {0, 0}, facing: "NORTH"}
  end
  
end