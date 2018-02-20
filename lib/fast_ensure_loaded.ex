defmodule FastEnsureLoaded do
  @moduledoc """
  A caching wrapper around `Code.ensure_loaded/1`
  """

  @doc """
  Wraps `Code.ensure_loaded/1` with a check to FastGlobal.
  If the Module hasn't been loaded it will be loaded as normal,
  then the information is stored in a list in FastGlobal.
  """
  def ensure_loaded(module) do
    module_list = FastGlobal.get(:fast_ensure_loaded) || []

    if Enum.find(module_list, fn x -> x == module end) do
      :ok
    else
      load_and_store_module(module)
    end
  end

  defp load_and_store_module(module) do
    Code.ensure_loaded(module)
    loaded = FastGlobal.get(:fast_ensure_loaded) || []
    FastGlobal.put(:fast_ensure_loaded, [module | loaded])
    :ok
  end
end
