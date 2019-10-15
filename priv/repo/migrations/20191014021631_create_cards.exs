defmodule Coello.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :order, :integer
      add :title, :string
      add :description, :string

      timestamps()
    end
  end
end
