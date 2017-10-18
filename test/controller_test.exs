defmodule ControllerTest do
  use ExUnit.Case, async: true

  test "cannot place a robot without a table" do
    catch_error Controller.place(0, 0, "NORTH")
  end

  test "can place a robot with an invalid table" do
    catch_error Controller.place(0, 0, "NORTH", "fake table")
  end

  test "can place a robot with a valid table" do
    table = %Table{}
    assert Controller.place(0, 0, "NORTH", table) == %ToyRobot.Robot{
      position: {0, 0}, 
      facing: "NORTH", 
      placed: true
    }
  end

  test "will not place robot on an invalid spot" do
    table = %Table{length: 1, width: 1}
    refute Controller.place(8, 8, "NORTH", table)
  end

  test "will not place robot on a negative spot" do
    table = %Table{}
    refute Controller.place(-1, -1, "NORTH", table)
  end

  test "will move the robot to a valid position" do
    table = %Table{}
    robbie = Controller.place(0, 0, "NORTH", table)
    assert Controller.move(robbie, table) == %ToyRobot.Robot{
      position: {0, 1},
      facing: "NORTH",
      placed: true
    }
  end

  test "will ignore commands to move to an invalid position" do
    table = %Table{}
    robbie = Controller.place(4, 4, "NORTH", table)
    assert Controller.move(robbie, table) == %ToyRobot.Robot{
      position: {4, 4},
      facing: "NORTH",
      placed: true
    }
  end
  
end