defmodule Coello.Repo.Migrations.CreateAttachments do
  use Ecto.Migration

  def change do
    create table(:attachments) do
      add :file, :string

      add :card_id, references(:cards)
      add :user_id, references(:users)

      timestamps()
    end

  end
end
