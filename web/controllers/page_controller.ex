defmodule Tikt.PageController do
  use Tikt.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
