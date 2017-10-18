defmodule ToyRobot.RobotBrainTest do
  use ExUnit.Case, async: true

  test "robot moves NORTH by 1 space" do
    robbie = %ToyRobot.Robot{position: {2, 3}, direction: "NORTH"}
    new_robbie = ToyRobot.RobotBrain.move(robbie)
    assert new_robbie.position == {2, 4}
  end

  test "robot moves WEST by 1 space" do
    robbie = %ToyRobot.Robot{position: {2, 4}, direction: "WEST"}
    new_robbie = ToyRobot.RobotBrain.move(robbie)
    assert new_robbie.position == {1, 4}
  end
end