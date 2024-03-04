# Used for testing
defmodule App.MixProject do
  use Mix.Project

  def project do
    [
      app: :app,
      version: "1.0.0",
      deps: deps()
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.0"}
    ]
  end
end
