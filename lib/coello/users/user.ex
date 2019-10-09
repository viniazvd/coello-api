defmodule Coello.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :details, :string, unique: true
    field :email, :string
    field :first_name, :string
    field :initials, :string
    field :last_name, :string
    field :password, :string
    field :photo, :string
    field :role, :string, default: "user"

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :first_name, :last_name, :password, :photo, :initials, :details, :role])
    |> validate_required([:email, :first_name, :last_name, :password, :photo, :initials, :details, :role])
  end
end
