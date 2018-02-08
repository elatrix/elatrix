defmodule ElatrixWeb.AuthControllerTest do
  use ElatrixWeb.ConnCase

  test "POST /login", %{conn: conn} do
    conn = post(conn, "/login", %{})
    assert %{"errcode" => "M_UNKNOWN", "error" => "Bad login type."} = json_response(conn, 400)
  end

  test "POST /login invalid type", %{conn: conn} do
    conn = post(conn, "/login", %{"type" => "shoot"})
    assert %{"errcode" => "M_UNKNOWN", "error" => "Bad login type."} = json_response(conn, 400)
  end

  test "POST /login type=m.login.password no more data", %{conn: conn} do
    conn = post(conn, "/login", %{"type" => "m.login.password"})
    assert %{"errcode" => "M_FORBIDDEN"} = json_response(conn, 403)
  end

  test "POST /login type=m.login.password empty data", %{conn: conn} do
    conn = post(conn, "/login", %{"type" => "m.login.password", "user" => "", "password" => ""})
    assert %{"errcode" => "M_FORBIDDEN"} = json_response(conn, 403)
  end

  test "POST /login type=m.login.password valid test data", %{conn: conn} do
    conn =
      post(conn, "/login", %{
        "type" => "m.login.password",
        "user" => "viva",
        "password" => "forever"
      })

    assert %{"user_id" => "@viva:noserver.org", "access_token" => "abc123", "device_id" => "nope"} =
             json_response(conn, 200)
  end
end
