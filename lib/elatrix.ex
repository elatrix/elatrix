defmodule Elatrix do
  use Application

  def start(_type, _args) do
    {:ok, _} = Plug.Adapters.Cowboy.http(Dispatcher, [])
  end

  def stop(_param) do
  end
 
end