defmodule Coello.Repo.Migrations.CreateLinks do
  use Ecto.Migration

  def change do
    create table(:links) do
      add :url, :string

      add :card_id, references(:cards)
      add :user_id, references(:users)

      timestamps()
    end

  end
end
