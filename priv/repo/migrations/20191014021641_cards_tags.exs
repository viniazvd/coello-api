defmodule Coello.Repo.Migrations.CardsTags do
  use Ecto.Migration

  def change do
    create table(:cards_tags, primary_key: false) do
      add :card_id, references(:cards)
      add :tag_id, references(:tags)
    end

    create unique_index(:cards_tags, [:card_id, :tag_id])
  end
end
