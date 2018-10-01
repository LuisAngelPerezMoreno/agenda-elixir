defmodule AgendaElixir.Router do
  use AgendaElixir.Web, :router

  pipeline :api do
    plug CORSPlug, origin: "http://localhost:4200"
    plug :accepts, ["json"]
  end

  scope "/api/v1", AgendaElixir do
    pipe_through :api

    resources "/users", UserController
    options   "/users", UserController, :options
    get "/users", UserController, :index
    get "/users/:id", UserController, :show
    post "/users", UserController, :create
  end
end
