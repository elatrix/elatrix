defmodule ElatrixWeb.AuthController do
  use ElatrixWeb, :controller

  def login(conn, params) do
    res = Elatrix.Authorisation.authorise(params)

    case res do
      {:ok, auth_data} ->
        render(conn, "login.json", %{
          data: auth_data
        })

      {:error_forbidden} ->
        conn
        |> put_status(403)
        |> render("403.json", %{data: %{"errcode" => "M_FORBIDDEN"}})

      _ ->
        conn
        |> put_status(400)
        |> render("400.json", %{data: %{"errcode" => "M_UNKNOWN", "error" => "Bad login type."}})
    end
  end
end
