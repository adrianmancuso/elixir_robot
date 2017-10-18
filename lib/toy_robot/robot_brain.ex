defmodule ToyRobot.RobotBrain do
  
  def move(robot) do
    %ToyRobot.Robot{position: new_position(robot.direction, robot.position), direction: robot.direction}
  end

  def turn(robot, direction) do
    
  end

  defp new_position(direction, {x,y} = position) do
    case direction do
      "NORTH" -> {x, y + 1}
      "EAST" -> {x + 1, y}
      "SOUTH" -> {x, y - 1}
      "WEST" -> {x - 1, y}       
    end
  end
end