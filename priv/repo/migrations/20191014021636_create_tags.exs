defmodule Coello.Repo.Migrations.CreateTags do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :type, :string
      add :color, :string

      timestamps()
    end
  end
end
