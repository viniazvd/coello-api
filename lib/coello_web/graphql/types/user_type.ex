defmodule CoelloWeb.Graphql.Types.UserType do
  use Absinthe.Schema.Notation

  object :user_type do
    field :id, :id
    field :email, :string
    field :password, :string
    field :last_name, :string
    field :first_name, :string
    field :role, :string
    field :photo, :string
    field :details, :string
    field :initials, :string
  end

  input_object :user_input_type do
    field(:email, non_null(:string))
    field(:password, non_null(:string))
    field(:last_name, non_null(:string))
    field(:first_name, non_null(:string))
    field(:role, :string)
    field(:photo, :string)
    field(:details, :string)
    field(:initials, :string)
  end
end