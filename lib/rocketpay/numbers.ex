defmodule Rocketpay.Numbers do
  def sumFromFile(filename) do
    "#{filename}.csv"
    |> File.read()
    |> handleFile()
  end

  defp handleFile({:ok, result}) do
    result =
      result
      |> String.split(",")
      |> Stream.map(fn number -> String.to_integer(number) end)
      |> Enum.sum()

    {:ok, %{result: result}}
  end

  defp handleFile({:error, _reason}), do: {:error, %{message: "Invalid file!"}}
end
