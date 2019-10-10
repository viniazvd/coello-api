defmodule Coello.Tags.Model do
  use Ecto.Schema
  import Ecto.Changeset
  alias Coello.Cards.Model, as: Cards

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "tags" do
    field :type, :string
    field :color, :string

    belongs_to :cards, Cards

    timestamps()
  end

  @doc false
  def changeset(tag, attrs) do
    tag
    |> cast(attrs, [:type, :color])
    |> validate_required([:type, :color])
  end
end
