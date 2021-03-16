defmodule Apipag.Number do
  def sun(filename) do
    #pipeline
    "#{filename}.csv"
    |> File.read()
    |> handle_file()

      #modo comvencional
     #file = File.read("#{filename}.csv")
    #handle_file(file)


  end

  defp handle_file({:ok, result}) do
    result =
    result |> String.split( ",")
    |> Enum.map(fn number -> String.to_integer(number) end)
    |> Enum.sum()
    {:ok, %{result: result}}


  end

  #defp handle_file({:ok, file }), do: file
  #defp handle_file({:error, _reason}), do: {:error,  "Invalid data"}


end
