# web/controllers/user_controller
defmodule AgendaElixir.UserController do
  use AgendaElixir.Web, :controller

  # web/controllers/user_controller.ex
  def index(conn, _params) do
    users = Repo.all(AgendaElixir.User)
    json conn, users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(AgendaElixir.User, String.to_integer(id))
    json conn, user
  end

end