defmodule AgendaElixir.Router do
  use AgendaElixir.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", AgendaElixir do
    pipe_through :api

    get "/users", UserController, :index
    get "/users/:id", UserController, :show
  end
end
