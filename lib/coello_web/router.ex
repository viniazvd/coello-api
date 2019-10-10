defmodule CoelloWeb.Router do
  use CoelloWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug(CoelloWeb.Plugs.Context)
  end

  scope "/api/v1" do
    pipe_through :api

    # Forwards a request at the given path to a plug.
    # All paths that match the forwarded prefix will be sent to the forwarded plug.
    forward("/graphql", Absinthe.Plug, schema: CoelloWeb.Graphql)

    # graphql playground
    if Mix.env() == :dev do
      forward("/graphiql", Absinthe.Plug.GraphiQL, schema: CoelloWeb.Graphql)
    end
  end
end

