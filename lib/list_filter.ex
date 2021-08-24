defmodule ListFilter do
  def call(list) do
    list
    |> filter_numeric()
    |> Enum.count(fn x -> rem(x, 2) == 1 end)
  end

  defp filter_numeric(list) do
    list
    |> Enum.filter(fn string -> Regex.match?(~r/[0-9]+/, string) end)
    |> Enum.map(&String.to_integer/1)
  end
end
