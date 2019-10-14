defmodule Coello.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :comment, :string

      add :card_id, references(:cards)
      add :user_id, references(:users)

      timestamps()
    end

  end
end
