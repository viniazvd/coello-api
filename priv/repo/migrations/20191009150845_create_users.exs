defmodule Coello.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :first_name, :string
      add :last_name, :string
      add :password_hash, :string
      add :photo, :string
      add :initials, :string
      add :details, :string
      add :role, :string

      timestamps()
    end

    create(unique_index(:users, [:email]))
  end
end
