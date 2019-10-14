defmodule Coello.Repo.Migrations.CreateBoards do
  use Ecto.Migration

  def change do
    create table(:boards) do
      add :name, :string
      add :color, :string
      add :is_private, :boolean, default: false, null: false

      timestamps()
    end

  end
end
