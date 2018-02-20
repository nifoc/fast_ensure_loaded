defmodule FastEnsureLoaded do
  def ensure_loaded(module) do
    case FastGlobal.get(:fast_ensure_loaded) do
      nil ->
        load_and_store_module(module)
      module_list ->
        if Enum.find(module_list, fn(x) -> x == module end) do
          :ok
        else
          load_and_store_module(module)
        end
    end
  end

  defp load_and_store_module(module) do
    Code.ensure_loaded(module)
    loaded = FastGlobal.get(:fast_ensure_loaded) || []
    FastGlobal.put(:fast_ensure_loaded, [module|loaded])
    :ok
  end
end
