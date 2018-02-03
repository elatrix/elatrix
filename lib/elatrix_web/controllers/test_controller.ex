defmodule ElatrixWeb.TestController do
  use ElatrixWeb, :controller

  def index(conn, _params) do
    render conn, "index.json", %{data: %{a: "1"}}
  end
end
