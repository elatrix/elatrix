defmodule ElatrixWeb.AuthView do
  use ElatrixWeb, :view

  def render("login.json", %{data: data}) do
    data
  end

  def render("400.json", %{data: data}) do
    data
  end

  def render("403.json", %{data: data}) do
    data
  end
end
