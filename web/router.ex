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
    options   "/users/:id", UserController, :options
    get "/users", UserController, :index
    get "/users/:id", UserController, :show
    post "/users", UserController, :create
    put "/users/:id", UserController, :update
    delete "/users/:id", UserController, :delete
  end
end
