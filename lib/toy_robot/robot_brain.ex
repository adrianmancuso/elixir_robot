defmodule ToyRobot.RobotBrain do
  
  def move(robot) do
    %ToyRobot.Robot{
      position: new_position(robot), 
      facing: robot.facing
    }
  end

  def turn(robot, :left) do
    %ToyRobot.Robot{
      position: robot.position,
      facing: left(robot)
    }
  end

  def turn(robot, :right) do
    %ToyRobot.Robot{
      position: robot.position,
      facing: right(robot)
    }
  end

  defp left(%{facing: facing} = robot) do
    case facing do
      "NORTH" -> "WEST"
      "EAST" -> "NORTH"
      "SOUTH" -> "EAST"
      "WEST" -> "SOUTH"        
    end
  end

  defp right(%{facing: facing} = robot) do
    case facing do
      "NORTH" -> "EAST"
      "EAST" -> "SOUTH"
      "SOUTH" -> "WEST"
      "WEST" -> "NORTH"
    end
  end

  defp new_position(%{position: {x,y}} = robot) do
    case robot.facing do
      "NORTH" -> {x, y + 1}
      "EAST" -> {x + 1, y}
      "SOUTH" -> {x, y - 1}
      "WEST" -> {x - 1, y}               
    end
  end
end