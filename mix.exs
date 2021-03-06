defmodule CardLabeler.Mixfile do
  use Mix.Project

  def project do
    [app: :card_labeler,
     version: "0.3.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger, :crypto, :sasl],
     mod: {CardLabeler, []}]
  end

  defp deps do
    [
      {:tesla, "~> 0.7.1"},
      {:hackney, "~> 1.8"},
      {:poison, "~> 3.1"},
      {:logger_papertrail_backend, "~> 0.2"},
    ]
  end
end
