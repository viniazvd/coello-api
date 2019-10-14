defmodule Coello.Cards.Model do
  use Ecto.Schema
  import Ecto.Changeset
  alias Coello.Tags.Model, as: Tags

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "cards" do
    field :description, :string
    field :order, :integer
    field :title, :string

    many_to_many :tags, Tags, join_through: "cards_tags"

    timestamps()
  end

  def changeset(card, attrs) do
    card
    |> cast(attrs, [:order, :title, :description])
    |> validate_required([:order, :title, :description])
  end
end
