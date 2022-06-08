defmodule Conditionals do
  @moduledoc """
  Documentation for `Conditionals`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Conditionals.hello()
      :world

  """

  # Write a program to check whether the last digit of a number (entered by user) is divisible by 3 or not.
  def last_num_div?(num) do
    last_digit = List.last(Integer.digits(num))
    cond do
      rem(last_digit, 3) === 0 -> true
      rem(last_digit, 3) != 0 -> false
    end
  end

  # Write a program to accept percentage from the user and display the grade according to the following criteria:

  # Marks                                    Grade
  # > 90                                       A
  # > 80 and <= 90                             B
  # >= 60 and <= 80                            C
  # below 60                                   D
  def student_grade(marks) when marks <= 100 do
    cond do
      marks > 90 -> "A"
      marks > 80 and marks <=90 -> "B"
      marks >= 60 and marks <= 80 -> "C"
      marks < 60 and marks >= 35 -> "D"
      true -> "Fail"
    end
  end

  def student_grade(marks), do: "Invalid marks, #{marks}"

  # Write a program to accept a number from 1 to 7 and display the name of the day like 1 for Sunday , 2 for Monday and so on.
  def display_day(day) when day <= 7 and day >= 1 do
    cond do
      day === 1 -> "Monday"
      day === 2 -> "Tuesday"
      day === 3 -> "Wednesday"
      day === 4 -> "Thursday"
      day === 5 -> "Friday"
      day === 6 -> "Saturday"
      day === 7 -> "Sunday"
    end
  end

  def display_day(day), do: "Invalid day #{day}"

  # Write a program to accept a number from 1 to 12 and display name of the month and days in that month like 1 for January and number of days 31 and so on
  def display_month(month) when month <= 12 and month >= 1 do
    cond do
      month === 1 -> "month : Jan, days : 31"
      month === 2 -> "month : Feb, days : 28"
      month === 3 -> "month : Mar, days : 31"
      month === 4 -> "month : Apr, days : 30"
      month === 5 -> "month : May, days : 31"
      month === 6 -> "month : June, days : 30"
      month === 7 -> "month : July, days : 31"
      month === 8 -> "month : Aug, days : 31"
      month === 9 -> "month : Sep, days : 30"
      month === 10 -> "month : Oct, days : 31"
      month === 11 -> "month : Nov, days : 30"
      month === 12 -> "month : Dec, days : 31"
    end
  end

  def display_month(month), do: "Invalid month #{month}"


  # Accept three sides of a triangle and check whether it is an equilateral, isosceles or scalene triangle.
def display_triangle_type(side1, side2, side3) when side1 > 0 and side2 > 0 and side3 > 0 do
  cond do
    side1 === side2 and side1 === side3 -> "Equilateral triangle"
    side1 === side2 or side1 === side3 or side2 === side3 -> "Isosceles trianle"
    side1 != side2 and side1 != side3 and side2 != side3 -> "Scalene triangle"
  end
end

def display_triangle_type(side1, side2, side3), do: "Please enter sides of triangle correctly in order to the determine the type of triangle"

end
