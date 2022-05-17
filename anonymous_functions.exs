# convert farenheit to celsius
farenheit_to_celsius = fn(faren) -> (faren - 32) * 5/9 end
farenheit_to_celsius.(104)

# number of seconds in days
seconds_in_days = fn(days) -> days * 24 * 60* 60 end
seconds_in_days.(2)

# calculates average age of two maps
average_age = fn(map_age1, map_age2)-> (map_age1[:age]+map_age2[:age])/2 end
average_age.(%{:age => 20}, %{:age => 30})
