defmodule AgendaElixir.User do
  use AgendaElixir.Web, :model
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :id, autogenerate: true}

  schema "tab_user" do
    field :nombre, :string
    field :telefono, :string
  end

  defp conn_with_status(conn, nil) do
    conn
    |> put_status(:not_found)
  end
  defp conn_with_status(conn, _) do
    conn
    |> put_status(:ok)
  end

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, [:nombre, :telefono])
  end

end