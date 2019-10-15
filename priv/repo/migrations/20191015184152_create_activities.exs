defmodule Coello.Repo.Migrations.CreateActivities do
  use Ecto.Migration

  def change do
    create table(:activities) do
      add :name, :string

      timestamps()
    end

  end
end
