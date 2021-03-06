defmodule LiveViewWeb.Element.Control.New do
  use Phoenix.LiveView
  use Phoenix.HTML

  alias LiveViewWeb.Helpers
  alias LiveViewWeb.Types
  alias LiveViewWeb.InputHelpers

  require Logger

  def render(assigns, parent_id) do
    Logger.debug("Rendering new Element Control")
    Logger.debug(parent_id)
    InputHelpers.button_new("element", parent_id, "page")
  end
end
