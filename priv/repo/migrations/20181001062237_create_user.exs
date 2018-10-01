defmodule AgendaElixir.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :nombre, :string
      add :telefono, :string
      timestamps
    end
  end
end
