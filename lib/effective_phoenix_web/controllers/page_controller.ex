defmodule EffectivePhoenixWeb.PageController do
  use EffectivePhoenixWeb, :controller

  def index(conn, _params) do
    conn
    |> put_flash(:error, "oh no my friend")
    |> render("index.html")

    #render(conn, "index.html")
  end
end
