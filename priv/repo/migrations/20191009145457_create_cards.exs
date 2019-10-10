defmodule Coello.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :order, :integer
      add :title, :string
      add :description, :string

      add :tag_id, references(:tags)

      timestamps()
    end
  end
end
