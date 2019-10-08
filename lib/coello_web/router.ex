defmodule CoelloWeb.Router do
  use CoelloWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", CoelloWeb do
    pipe_through :api

    get "/users", UserController, :index
  end
end

