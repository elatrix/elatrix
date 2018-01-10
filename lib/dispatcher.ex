defmodule Dispatcher do
  def init(default_options) do
    IO.puts("init elatrix plug")
    default_options
  end

  def call(conn, options) do
    IO.puts("request recieved")

    conn
    |> Plug.Conn.send_resp(200, "Gotcha!")
  end
end
