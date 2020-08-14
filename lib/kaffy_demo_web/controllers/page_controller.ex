defmodule KaffyDemoWeb.PageController do
  use KaffyDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
