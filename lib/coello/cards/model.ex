defmodule Coello.Cards.Model do
  use Ecto.Schema
  import Ecto.Changeset

  alias Coello.Tags.Model, as: Tags
  alias Coello.Comments.Model, as: Comments
  alias Coello.Attachments.Model, as: Attachments

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "cards" do
    field :description, :string
    field :order, :integer
    field :title, :string

    many_to_many :tags, Tags, join_through: "cards_tags"
    has_many :comments, Comments
    has_many :attachments, Attachments

    timestamps()
  end

  def changeset(card, attrs) do
    card
    |> cast(attrs, [:order, :title, :description])
    |> validate_required([:order, :title, :description])
  end
end
