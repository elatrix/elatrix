defmodule ElatrixWeb.Router do
  use ElatrixWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ElatrixWeb do
    pipe_through :api

    get "/", TestController, :index
  end

end
