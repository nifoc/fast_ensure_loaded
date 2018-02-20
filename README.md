# FastEnsureLoaded

`Code.ensure_loaded/1` can become slow if you have lot's of modules (or just a few, benchmark shows that this module brings at least a ~2.5x performance increase).

We call `Code.ensure_loaded/1` only after checking a list stored in [FastGlobal](https://github.com/discordapp/fastglobal).


## Installation

The package can be installed by adding `fast_ensure_loaded` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fast_ensure_loaded, "~> 0.1.0"}
  ]
end
```

## Usage

Replace all calls to `Code.ensure_loaded/1` with `FastEnsureLoaded.ensure_loaded/1`

The docs can be found at [https://hexdocs.pm/fast_ensure_loaded](https://hexdocs.pm/fast_ensure_loaded).
