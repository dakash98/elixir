# convert farenheit to celsius
farenheit_to_celsius = fn faren -> (faren - 32) * 5 / 9 end
IO.puts("farenheit to celsius : #{farenheit_to_celsius.(104)}")

# number of seconds in days
seconds_in_days = fn days -> days * 24 * 60 * 60 end
IO.puts("seconds in days : #{seconds_in_days.(2)}")

# calculates average age of two maps
average_age = fn map_age1, map_age2 -> (map_age1[:age] + map_age2[:age]) / 2 end
IO.puts("average age : #{average_age.(%{:age => 20}, %{:age => 30})}")

# checks if a year is leap year or not
is_leap_year = fn year -> (rem(year, 4) === 0 and rem(year, 100) != 0) or rem(year, 400) === 0 end
IO.puts("leap year : #{is_leap_year.(1995)}")

# checks if a year is leap year or not
is_leap_year = fn year ->
  cond do
    rem(year, 100) != 0 and rem(year, 4) === 0 -> true
    rem(year, 400) === 0 -> true
    true -> false
  end
end

IO.puts("leap year: #{is_leap_year.(1597)}")
