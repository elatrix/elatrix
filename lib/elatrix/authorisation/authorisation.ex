defmodule Elatrix.Authorisation do
  @auth_fields %{"type" => "", "login" => "", "password" => "", "token" => ""}

  def authorise(params) do
    case Map.merge(@auth_fields, params) do
      %{"type" => "m.login.password", "user" => "viva", "password" => "forever"} ->
        {:ok, %{user_id: "@viva:noserver.org", access_token: "abc123", device_id: "nope"}}

      %{"type" => "m.login.password"} ->
        {:error_forbidden}

      %{"type" => "m.login.token"} ->
        {:error_not_implemented}

      _ ->
        {:error_auth_bad_type}
    end
  end
end
