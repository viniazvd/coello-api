defmodule Coello.Repo.Migrations.CreateLinks do
  use Ecto.Migration

  def change do
    create table(:links) do
      add :url, :string

      timestamps()
    end

  end
end
