defmodule Elatrix.Authorisation do
  def authorise(params) do
    case params do
      %{"type" => "m.login.password"} ->
        case params do
          %{"user" => "viva", "password" => "forever"} ->
            {:ok, "@viva:noserver.org", "abc123", "nope"}

          _ ->
            {:error_forbidden}
        end

      %{"type" => "m.login.token"} ->
        {:error_not_implemented}

      _ ->
        {:error_auth_bad_type}
    end
  end
end
