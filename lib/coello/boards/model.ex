defmodule Coello.Boards do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "boards" do
    field :color, :string
    field :is_private, :boolean, default: false
    field :name, :string

    timestamps()
  end

  def changeset(boards, attrs) do
    boards
    |> cast(attrs, [:name, :color, :is_private])
    |> validate_required([:name, :color, :is_private])
  end
end
