defmodule Constants do
  @moduledoc """
  Documentation for `Constants`.
  """

  @doc """
  display_name_property

  ## Examples

      iex> Constants.display_name_property(:akash)
      {:ok, %{age: "25", gender: "male"}}

  """

  @people_mapping %{
    :akash => %{
      :age => "25",
      :gender => "male"
    },
    :ashish => %{
      :age => "24",
      :gender => "male"
    },
    :praveen => %{
      :age => "23",
      :gender => "male"
    }
  }
  def display_name_property(name) when is_map_key(@people_mapping, name), do: {:ok, @people_mapping[name]}
  def display_name_property(name), do: {:error, "#{name} not found"}


  def check_name_and_property(name, property) when is_map_key(@people_mapping, name), do: check_property(@people_mapping[name], property)
  def check_property(name, property) when is_map_key(name, property), do: {:ok, name[property]}

end
