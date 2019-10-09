defmodule Coello.Users.Model do
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
    field :password, :string, virtual: true
    field :password_hash, :string
    field :photo, :string
    field :role, :string, default: "user"

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :first_name, :last_name, :password, :photo, :initials, :details, :role])
    |> validate_required([:email, :first_name, :last_name, :password, :role])
    |> validate_format(:email, ~r/@/) # TODO: improve email validation
    |> validate_length(:password, min: 6)
    |> update_change(:email, &String.downcase(&1))
    |> unique_constraint(:email)
    |> put_password_hash
  end

  defp put_password_hash(
         %Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset
       ) do
    change(changeset, Bcrypt.add_hash(password))
  end

  defp put_password_hash(changeset), do: changeset
end
