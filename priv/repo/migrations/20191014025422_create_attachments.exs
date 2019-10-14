defmodule Coello.Repo.Migrations.CreateAttachments do
  use Ecto.Migration

  def change do
    create table(:attachments, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :file, :string

      add :card_id, references(:cards)

      timestamps()
    end

  end
end
