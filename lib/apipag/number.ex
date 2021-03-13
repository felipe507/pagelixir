defmodule Apipag.Number do
  def sun(filename) do
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
     #file = File.read("#{filename}.csv")
    #handle_file(file)


  end


  defp handle_file({:ok, file }), do: file
  defp handle_file({:error, _reason}), do: {:error,  "Invalid data"}


end
