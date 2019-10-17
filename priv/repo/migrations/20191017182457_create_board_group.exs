defmodule Coello.Repo.Migrations.CreateBoardGroup do
  use Ecto.Migration

  def change do
    create table(:board_group) do
      add :board_id, :integer
      add :group_id, :integer

      timestamps()
    end
  end
end
