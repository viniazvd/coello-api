defmodule Coello.Attachments.Model do
  use Ecto.Schema
  import Ecto.Changeset

  alias Coello.Cards.Model, as: Cards

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "attachments" do
    field :file, :string

    belongs_to :card, Cards

    timestamps()
  end

  def changeset(attachments, attrs) do
    attachments
    |> cast(attrs, [:file])
    |> validate_required([:file])
  end
end
