defmodule StringMath do
  def compute(input) do
    input
    |> to_string
    |> String.split("+")
    |> Enum.map(&multiply/1)
    |> sum_logn
  end

  defp multiply(string) do
    string
    |> String.split("*")
    |> Enum.map(&String.to_integer/1)
    |> Enum.reduce(&(&1 * &2))
  end

  defp sum([], acc), do: acc
  defp sum([head | tail], acc) do
    acc + head + sum(tail, acc)
  end

  defp sum_logn([head | []]), do: head
  defp sum_logn(list) do
    list
    |> Enum.chunk(2, 2, [])
    |> Enum.map(&sum_two/1)
    |> sum_logn
  end

  defp sum_two([first | []]), do: first
  defp sum_two([first | second]) do
    first + hd second
  end
end
