Benchee.run(%{
      "Code.ensure_loaded" => fn -> Code.ensure_loaded(FastEnsureLoaded) end,
      "FastEnsureLoaded" => fn -> FastEnsureLoaded.ensure_loaded(FastEnsureLoaded) end
})
