defmodule CoelloWeb.Schema.Resolvers.UserResolver do
  alias Coello.Users.Controller, as: UserController

  def users(_,_,_) do
    {:ok, UserController.list_users()}
  end
end