defmodule LiveViewWeb.Annotation.Header do
  use Phoenix.LiveView
  use Phoenix.HTML

  alias LiveViewWeb.Helpers
  alias LiveViewWeb.Types
  alias LiveViewWeb.InputHelpers

  def render(annotation, parent_type, parent_id, assigns) do
    content_tag(:h5, [ class: "mb-1" ]) do
      annotation.id
    end
  end
end


