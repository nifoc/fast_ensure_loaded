defmodule FastEnsureLoaded.MixProject do
  use Mix.Project

  def project do
    [
      app: :fast_ensure_loaded,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:fastglobal, "~> 1.0"},
      {:benchee, "~> 0.12.0", only: [:dev]}
    ]
  end

  defp description() do
    "Cache Code.ensure_loaded calls in FastGlobal."
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "fast_ensure_loaded",
      # These are the default files included in the package
      files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
      maintainers: ["Tim Buchwaldt"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/timbuchwaldt/fast_ensure_loaded"}
    ]
  end
end
