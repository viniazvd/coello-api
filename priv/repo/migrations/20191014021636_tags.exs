defmodule Coello.Repo.Migrations.Tags do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :type, :string
      add :color, :string

      timestamps()
    end
  end
end
