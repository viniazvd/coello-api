defmodule CoelloWeb.Graphql.Types.Index do
  use Absinthe.Schema.Notation

  alias CoelloWeb.Graphql.Types.{UserType, AuthType}

  import_types(UserType)
  import_types(AuthType)
end