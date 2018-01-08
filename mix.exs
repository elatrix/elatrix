defmodule Elatrix.MixProject do
  use Mix.Project

  def project do
    [
      app: :elatrix,
      version: "0.1.0",
      elixir: "~> 1.6-rc",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Elatrix, []}
    ]
  end

  defp deps do
    [
      {:cowboy, "~>1.0"},
      {:plug, "~>1.0"}
    ]
  end
end
