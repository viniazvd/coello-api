defmodule Coello.Activities do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "activities" do
    field :name, :string

    timestamps()
  end

  def changeset(activities, attrs) do
    activities
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
