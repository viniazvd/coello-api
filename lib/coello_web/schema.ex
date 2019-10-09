defmodule CoelloWeb.Schema do
  use Absinthe.Schema

  alias CoelloWeb.Schema.Resolvers

  # import types
  import_types(CoelloWeb.Schema.Types.Index)

  query do
    @docs "user list"
    field :users, list_of(:user_type) do
      resolve(&Resolvers.UserResolver.users/3)
    end
  end

  mutation do
    @docs "create user"
    field :create_user, type: :user_type do
      arg(:input, non_null(:user_input_type))
      resolve(&Resolvers.UserResolver.create_user/3)
    end
  end

  # subscription do end
end