# matches patterns if name & age both matches or name matches
is_age_present = fn
  %{name: name, age: age} -> "AGE is also present here, HURRAYYYYY!!!!"
  %{name: name} -> "Here, only name is present, #{name}"
end

is_age_present.(%{name: "a", age: 10})
is_age_present.(%{name: "a"})
