defmodule ElatrixWeb.TestView do
  use ElatrixWeb, :view

  def render("index.json", %{data: data}) do
    data
  end
end
