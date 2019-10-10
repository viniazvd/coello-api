defmodule CoelloWeb.Graphql.Resolvers.UserResolver do
  alias Coello.Users.Services, as: UserServices

  def users(_,_,_) do
    {:ok, UserServices.list_users()}
  end

  def create_user(_,%{input: input},_) do
    UserServices.create_user(input)
  end
end