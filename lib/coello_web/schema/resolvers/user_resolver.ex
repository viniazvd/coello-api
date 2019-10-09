defmodule CoelloWeb.Schema.Resolvers.UserResolver do
  alias Coello.Users.Controller, as: UserController

  def users(_,_,_) do
    {:ok, UserController.list_users()}
  end

  def create_user(_,%{input: input},_) do
    UserController.create_user(input)
  end
end