defmodule Coello.Repo.Migrations.CreateGroupCard do
  use Ecto.Migration

  def change do
    create table(:group_card) do
      add :group_id, :integer
      add :card_id, :integer

      timestamps()
    end

  end
end
