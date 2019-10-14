defmodule Coello.Comments.Model do
  use Ecto.Schema
  import Ecto.Changeset

  alias Coello.Cards.Model, as: Cards

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "comments" do
    field :text, :string

    belongs_to :card, Cards

    timestamps()
  end

  def changeset(comments, attrs) do
    comments
    |> cast(attrs, [:text])
    |> validate_required([:text])
  end
end
