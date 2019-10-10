defmodule CoelloWeb.Graphql.Types.AuthType do
  use Absinthe.Schema.Notation

  object :auth_type do
    field :token, :string
    field :user, :user_type
  end

  input_object :auth_input_type do
    field(:email, non_null(:string))
    field(:password, non_null(:string))
  end
end