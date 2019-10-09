defmodule CoelloWeb.Schema do
  use Absinthe.Schema

  alias CoelloWeb.Graphql.Resolvers

  # import types
  import_types(CoelloWeb.Schema.Types.Index)

  query do
    @docs "user list"
    field :users, list_of(:user_type) do
      resolve(&Resolvers.UserResolver.user/3)
    end
  end

  # mutation do end

  # subscription do end
end