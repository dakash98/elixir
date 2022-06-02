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

# mil = fn(volume_pair) ->
#   cond do
#     {:cup, volume} = volume_pair -> {:milliliter, volume * 240}
#     {:fluid_ounce, volume} = volume_pair -> {:milliliter, volume * 30}
#     {:teaspoon, volume} = volume_pair -> {:milliliter, volume * 5}
#     {:tablespoon, volume} = volume_pair -> {:milliliter, volume * 15}
#     {:milliliter, volume} = volume_pair -> {:milliliter, volume * 1}
#   end
# end

# IO.puts("==== > #{mil.({:teaspoon, 100})}")

# mil = fn
#     {:cup, volume} -> {:milliliter, volume * 240}
#     {:fluid_ounce, volume} -> {:milliliter, volume * 30}
#     {:teaspoon, volume}  -> {:milliliter, volume * 5}
#     {:tablespoon, volume} -> {:milliliter, volume * 15}
#     {:milliliter, volume} -> {:milliliter, volume * 1}
# end

# IO.puts("==== > #{mil.({:teaspoon, 100})}")

get_volume = fn volume_pair ->
  trunc(elem(volume_pair, 1))
end

mil = fn volume_pair, unit ->
  case unit do
    :cup -> {:cup, div(get_volume.(volume_pair), 240)}
    :fluid_ounce -> {:fluid_ounce, div(get_volume.(volume_pair), 30)}
    :teaspoon -> {:teaspoon, div(get_volume.(volume_pair), 5)}
    :tablespoon -> {:tablespoon, div(get_volume.(volume_pair), 15)}
    :milliliter -> {:milliliter, get_volume.(volume_pair)}
  end
end

IO.puts(mil.({:milliliter, 1320}, :cup))
