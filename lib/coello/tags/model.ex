defmodule Coello.Tags.Model do
  use Ecto.Schema
  import Ecto.Changeset
  alias Coello.Cards.Model, as: Cards

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "tags" do
    field :type, :string
    field :color, :string

    many_to_many :cards, Cards, join_through: "cards_tags"

    timestamps()
  end

  def changeset(tag, attrs) do
    tag
    |> cast(attrs, [:type, :color])
    |> validate_required([:type, :color])
  end
end
