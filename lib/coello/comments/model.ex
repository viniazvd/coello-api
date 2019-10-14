defmodule Coello.Comments.Model do
  use Ecto.Schema
  import Ecto.Changeset

  alias Coello.Cards.Model, as: Cards
  alias Coello.Users.Model, as: Users

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "comments" do
    field :comment, :string

    belongs_to :cards, Cards
    belongs_to :users, Users

    timestamps()
  end

  def changeset(comments, attrs) do
    comments
    |> cast(attrs, [:comment])
    |> validate_required([:comment])
  end
end
