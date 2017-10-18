defmodule Controller do
  
  
  def place(x, y, facing, table) do
    if is_valid?(x, y, table) do 
      %ToyRobot.Robot{position: {x, y}, facing: facing, placed: true}
    end
  end

  def move(robot, table) do
    future_robot = ToyRobot.RobotBrain.move(robot)
    if is_valid?(future_robot, table), do: future_robot, else: robot
  end

  # not yet placed
  defp is_valid?(x, y, %{width: width, length: length}) do
    Enum.member?(0..width-1, x) && Enum.member?(0..length-1, y)
  end

  # placed
  defp is_valid?(%{position: {x, y}}, %{width: width, length: length}) do
    Enum.member?(0..width-1, x) && Enum.member?(0..length-1, y)
  end
end