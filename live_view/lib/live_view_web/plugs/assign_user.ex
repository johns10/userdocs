defmodule LiveViewWeb.AssignUser do
  import Plug.Conn

  alias Storage.Users.User
  alias LiveView.Users.User

  def init(opts), do: opts

  def call(conn, params) do
    assign(conn, :current_user, Pow.Plug.current_user(conn))
  end
end
