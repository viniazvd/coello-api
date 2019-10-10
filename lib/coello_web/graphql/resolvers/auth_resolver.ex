defmodule CoelloWeb.Graphql.Resolvers.AuthResolver do
  alias Coello.{Auth, Guardian}

  def auth_user(_, %{input: input}, _) do
    with {:ok, user} <- Auth.Services.authenticate(input),
         {:ok, jwt_token, _} <- Guardian.encode_and_sign(user) do
      {:ok, %{token: jwt_token, user: user}}
    end
  end
end