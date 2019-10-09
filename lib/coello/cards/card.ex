defmodule Coello.Cards.Card do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "cards" do
    field :description, :string
    field :order, :integer
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(card, attrs) do
    card
    |> cast(attrs, [:order, :title, :description])
    |> validate_required([:order, :title, :description])
  end
end
