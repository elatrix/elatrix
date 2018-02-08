defmodule ElatrixWeb.TestControllerTest do
  use ElatrixWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert %{"a" => "1"} = json_response(conn, 200)
  end
end
