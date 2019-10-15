defmodule Coello.Repo.Migrations.CreateGroups do
  use Ecto.Migration

  def change do
    create table(:groups) do
      add :name, :string
      add :order, :integer

      timestamps()
    end

  end
end
