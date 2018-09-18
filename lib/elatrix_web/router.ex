defmodule ElatrixWeb.Router do
  use ElatrixWeb, :router

  pipeline :api do
    plug(ElatrixWeb.Plug.ContentTypeSubs)
    plug(:accepts, ["json"])

    plug(
      Plug.Parsers,
      parsers: [:json],
      pass: ["application/json", "text/plain"],
      json_decoder: Poison
    )
  end

  scope "/_matrix/client/r0", ElatrixWeb do
    pipe_through(:api)

    get("/", TestController, :index)
    post("/login", AuthController, :login)
  end
end
