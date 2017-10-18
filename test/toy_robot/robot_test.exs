defmodule ToyRobot.RobotTest do
  use ExUnit.Case, async: true

  test "robot struct can be created" do
    assert %ToyRobot.Robot{} != nil
  end

  test "robot contains no default values" do
    robbie = %ToyRobot.Robot{}
    assert robbie.position == nil
  end

  test "robot can store position" do
    robbie = %ToyRobot.Robot{position: {2, 4}, direction: "NORTH"}
    assert robbie.position == {2, 4}
  end

  test "robot can store direction" do
    robbie = %ToyRobot.Robot{position: {2, 4}, direction: "NORTH"}
    assert robbie.direction == "NORTH"
  end
end