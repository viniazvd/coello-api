
defmodule Coello.Groups do
  use Ecto.Schema
  import Ecto.Changeset

  alias Coello.Boards.Model, as: Boards

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "groups" do
    field :name, :string
    field :order, :integer

    belongs_to :boards, Boards

    timestamps()
  end

  def changeset(groups, attrs) do
    groups
    |> cast(attrs, [:name, :order])
    |> validate_required([:name, :order])
  end
end
