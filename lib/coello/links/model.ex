defmodule Coello.Links.Model do
  use Ecto.Schema
  import Ecto.Changeset

  alias Coello.Cards.Model, as: Cards
  alias Coello.Users.Model, as: Users

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "links" do
    field :url, :string

    belongs_to :card, Cards
    belongs_to :users, Users

    timestamps()
  end

  def changeset(links, attrs) do
    links
    |> cast(attrs, [:url])
    |> validate_required([:url])
  end
end
