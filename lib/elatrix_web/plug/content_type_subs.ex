defmodule ElatrixWeb.Plug.ContentTypeSubs do
  import Plug.Conn

  def init(options), do: options

  def call(%Plug.Conn{request_path: path} = conn, opts) do
    put_req_header(conn, "content-type", "application/json")
  end
end
