defmodule CoelloWeb.Graphql.Types do
  use Absinthe.Schema.Notation

  alias CoelloWeb.Graphql.Types

  import_types(Types.UserType)
end