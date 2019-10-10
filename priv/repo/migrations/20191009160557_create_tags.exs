defmodule Coello.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:tags, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :card_id, :integer
      add :type, :string
      add :color, :string

      add :card_id, references(:cards)

      timestamps()
    end

    create(index(:cards, [:card_id]))
  end
end
