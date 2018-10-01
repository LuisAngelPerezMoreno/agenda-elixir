defmodule AgendaElixir.User do
  use Ecto.Schema

  @primary_key {:id, :id, autogenerate: true}

  schema "tab_user" do
    field :nombre, :string
    field :telefono, :string
  end
end