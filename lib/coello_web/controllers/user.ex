# web/controllers/user
defmodule CoelloWeb.UserController do
  use CoelloWeb, :controller

  def index(conn, _params) do
    users = "coe"

    json conn, users
  end
end