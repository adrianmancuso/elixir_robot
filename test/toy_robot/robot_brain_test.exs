defmodule ToyRobot.RobotBrainTest do
  use ExUnit.Case, async: true

  setup do
    robbie = %ToyRobot.Robot{position: {1, 1}, facing: "NORTH"}
    [robot: robbie]
  end

  test "robot moves NORTH by 1 space", context do
    new_robbie = ToyRobot.RobotBrain.move(context[:robot])
    assert new_robbie.position == {1, 2}
  end

  test "robot moves WEST by 1 space" do
    robbie = %ToyRobot.Robot{position: {1, 1}, facing: "WEST"}
    new_robbie = ToyRobot.RobotBrain.move(robbie)
    assert new_robbie.position == {0, 1}
  end

  test "robot faces EAST after turning RIGHT", context do
    new_robbie = ToyRobot.RobotBrain.turn(context[:robot], :right)
    assert new_robbie.facing == "EAST"
  end

  test "robot faces WEST after turning LEFT", context do
    new_robbie = ToyRobot.RobotBrain.turn(context[:robot], :left)
    assert new_robbie.facing == "WEST"
  end
end