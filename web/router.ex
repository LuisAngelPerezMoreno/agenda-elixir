defmodule AgendaElixir.Router do
  use AgendaElixir.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AgendaElixir do
    pipe_through :api
  end
end
