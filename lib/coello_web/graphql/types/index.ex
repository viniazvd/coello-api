defmodule CoelloWeb.Graphql.Types.Index do
  use Absinthe.Schema.Notation

  # TODO: create alias

  import_types(CoelloWeb.Graphql.Types.UserType)
  import_types(CoelloWeb.Graphql.Types.AuthType)
end